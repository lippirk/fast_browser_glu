// The whole forward pass in WebAssembly: the matmuls of linear.h, and RMSNorm,
// SiLU and softmax with SIMD too. WebAssembly has no exp, so it's a polynomial here.
// The gate and up projections are one matmul, with their weights side by side.
// fast.js lays out the weights and buffers in memory and describes them in a Model, and
// forward_batch runs a whole batch, a tile at a time.
#include "linear.h"

#define MAX_BLOCKS 8

typedef struct {
  float *norm;
  float *gate_upT;   // (d, 2 hidden): the gate's columns, then the up's, packed (linear.h)
  float *downT;      // (hidden, d)
} Block;

// fast.js writes this field by field, in this order.
typedef struct {
  int d_in, d, hidden, d_out, d_out_pad, n_blocks;
  float *embT, *emb_b, *norm, *headT, *head_b, *zeros;
  // A tile's buffers: h and n and down (tile, d), gate_up (tile, 2 hidden), act (tile, hidden),
  // out (tile, d_out_pad).
  float *h, *n, *gate_up, *act, *down, *out;
  Block blocks[MAX_BLOCKS];
} Model;

#define splat wasm_f32x4_splat

// e^x in each lane, like np.exp on float32: to about 1e-7 relative error, denormals near 0,
// and inf above 88.72. Write x = k ln 2 + r with |r| <= ln 2 / 2; then e^x = 2^k e^r, with e^r
// from its Taylor series to r^6, and 2^k built from its bits.
INLINE v128_t exp4(v128_t x) {
  // e^x is inf in fp32 above 88.72 and 0 below -103.97, so this clamp doesn't change it
  x = wasm_f32x4_pmax(wasm_f32x4_pmin(x, splat(89.0f)), splat(-105.0f));
  v128_t k = wasm_f32x4_nearest(wasm_f32x4_mul(x, splat(1.44269504f)));
  v128_t r = wasm_f32x4_sub(x, wasm_f32x4_mul(k, splat(0.693145752f)));  // ln 2, split in two
  r = wasm_f32x4_sub(r, wasm_f32x4_mul(k, splat(1.42860677e-6f)));      // for accuracy
  v128_t p = splat(1.0f / 720);
  p = wasm_f32x4_relaxed_madd(p, r, splat(1.0f / 120));
  p = wasm_f32x4_relaxed_madd(p, r, splat(1.0f / 24));
  p = wasm_f32x4_relaxed_madd(p, r, splat(1.0f / 6));
  p = wasm_f32x4_relaxed_madd(p, r, splat(0.5f));
  p = wasm_f32x4_relaxed_madd(p, r, splat(1.0f));
  p = wasm_f32x4_relaxed_madd(p, r, splat(1.0f));
  // 2^k as 2^k1 * 2^k2, with k1 = floor(k / 2): k is -151 to 128, too big or small for
  // one normal float, but each half is a normal float, built from its exponent bits
  v128_t k_int = wasm_i32x4_trunc_sat_f32x4(k);
  v128_t k1 = wasm_i32x4_shr(k_int, 1), k2 = wasm_i32x4_sub(k_int, k1);
  v128_t two_k1 = wasm_i32x4_shl(wasm_i32x4_add(k1, wasm_i32x4_splat(127)), 23);
  v128_t two_k2 = wasm_i32x4_shl(wasm_i32x4_add(k2, wasm_i32x4_splat(127)), 23);
  return wasm_f32x4_mul(wasm_f32x4_mul(p, two_k1), two_k2);  // rounds to inf or a denormal
}

// silu(z) = z / (1 + e^-z), in each lane.
INLINE v128_t silu4(v128_t z) {
  return wasm_f32x4_div(z, wasm_f32x4_add(splat(1.0f), exp4(wasm_f32x4_neg(z))));
}

// Each row of Y = that row of X / rms(row) * w, for X and Y of shape (n, d).
INLINE void rms_norm(float *Y, const float *X, int n, const float *w, int d) {
  for (int s = 0; s < n; s++) {
    const float *x = X + s * d;
    float *y = Y + s * d;
    v128_t sq = splat(0.0f);
    for (int i = 0; i < d; i += 4) {
      v128_t xi = wasm_v128_load(x + i);
      sq = wasm_f32x4_relaxed_madd(xi, xi, sq);
    }
    float sum = wasm_f32x4_extract_lane(sq, 0) + wasm_f32x4_extract_lane(sq, 1) +
                wasm_f32x4_extract_lane(sq, 2) + wasm_f32x4_extract_lane(sq, 3);
    v128_t scale = splat(1.0f / __builtin_sqrtf(sum / d + 1.1920929e-7f));
    for (int i = 0; i < d; i += 4) {
      v128_t xi = wasm_v128_load(x + i);
      wasm_v128_store(y + i, wasm_f32x4_mul(wasm_f32x4_mul(xi, scale), wasm_v128_load(w + i)));
    }
  }
}

// The first d entries of each row of Z = softmax of them, in place, 4 at a time, for rows of
// stride. Each row needs room for d rounded up to a multiple of 4: those extra entries are set
// to -inf, so they don't change the max, and come out as e^-inf = 0.
INLINE void softmax(float *Z, int n, int d, int stride) {
  int d4 = (d + 3) / 4 * 4;
  for (int s = 0; s < n; s++) {
    float *z = Z + s * stride;
    for (int k = d; k < d4; k++)
      z[k] = -__builtin_inff();
    v128_t max4 = wasm_v128_load(z);
    for (int k = 4; k < d4; k += 4)
      max4 = wasm_f32x4_pmax(max4, wasm_v128_load(z + k));
    // The max of the 4 lanes, in every lane: swap halves, then neighbours.
    max4 = wasm_f32x4_pmax(max4, wasm_i32x4_shuffle(max4, max4, 2, 3, 0, 1));
    max4 = wasm_f32x4_pmax(max4, wasm_i32x4_shuffle(max4, max4, 1, 0, 3, 2));
    v128_t total4 = splat(0.0f);
    for (int k = 0; k < d4; k += 4) {
      v128_t e = exp4(wasm_f32x4_sub(wasm_v128_load(z + k), max4));
      wasm_v128_store(z + k, e);
      total4 = wasm_f32x4_add(total4, e);
    }
    float total = wasm_f32x4_extract_lane(total4, 0) + wasm_f32x4_extract_lane(total4, 1) +
                  wasm_f32x4_extract_lane(total4, 2) + wasm_f32x4_extract_lane(total4, 3);
    v128_t scale = splat(1.0f / total);
    for (int k = 0; k < d4; k += 4)
      wasm_v128_store(z + k, wasm_f32x4_mul(wasm_v128_load(z + k), scale));
  }
}

// n rows of X, of shape (n, d_in), to output probabilities in the first d_out columns of
// m->out. n is at most the tile size the buffers were made for.
static void forward_rows(const Model *m, const float *X, int n) {
  int d = m->d, hidden = m->hidden;
  linear(m->h, X, n, m->embT, m->emb_b, m->d_in, d);
  for (int k = 0; k < m->n_blocks; k++) {
    const Block *block = &m->blocks[k];
    rms_norm(m->n, m->h, n, block->norm, d);
    linear(m->gate_up, m->n, n, block->gate_upT, m->zeros, d, 2 * hidden);
    for (int s = 0; s < n; s++) {
      const float *gate = m->gate_up + s * 2 * hidden, *up = gate + hidden;
      for (int j = 0; j < hidden; j += 4) {
        v128_t act = wasm_f32x4_mul(silu4(wasm_v128_load(gate + j)), wasm_v128_load(up + j));
        wasm_v128_store(m->act + s * hidden + j, act);
      }
    }
    linear(m->down, m->act, n, block->downT, m->zeros, hidden, d);
    for (int i = 0; i < n * d; i += 4) {
      v128_t h = wasm_f32x4_add(wasm_v128_load(m->h + i), wasm_v128_load(m->down + i));
      wasm_v128_store(m->h + i, h);
    }
  }
  rms_norm(m->n, m->h, n, m->norm, d);
  linear(m->out, m->n, n, m->headT, m->head_b, d, m->d_out_pad);
  softmax(m->out, n, m->d_out, m->d_out_pad);
}

// X of shape (B, d_in) to out of shape (B, d_out), both row-major, tile rows at a time.
__attribute__((export_name("forward_batch")))
void forward_batch(const Model *m, const float *X, float *out, int B, int tile) {
  for (int s = 0; s < B; s += tile) {
    int n = B - s < tile ? B - s : tile;
    forward_rows(m, X + s * m->d_in, n);
    for (int r = 0; r < n; r++)  // drop the head's padding
      for (int k = 0; k < m->d_out; k++)
        out[(s + r) * m->d_out + k] = m->out[r * m->d_out_pad + k];
  }
}
