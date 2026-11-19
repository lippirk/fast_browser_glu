// The matmul kernel of kernel.c and forward.c.
//
// linear(Y, X, n, WT, b, dIn, dOut) computes Y = X W^T + b, for X of shape (n, dIn), Y of
// shape (n, dOut), and WT = W transposed, of shape (dIn, dOut), so that the weights of
// neighbouring outputs sit together. dOut must be a multiple of 4.
//
// It works on blocks of R rows by 4V outputs, holding the block's R * V vectors of sums in
// registers: each step loads V vectors of weights and R inputs, and does R * V fused
// multiply-adds of four lanes each.
//
// WT is packed in the order the blocks read it: its columns in strips of 16, then of 4, each
// strip's dIn rows one after another (fast.js's pack). So a block reads its weights straight
// through memory, rather than 4V of every dOut.
#include <wasm_simd128.h>

#define INLINE static inline __attribute__((always_inline))

// The R x 4V block of Y at row 0, output 0 of the pointers given.
INLINE void block(int R, int V, float *Y, const float *X, const float *WT, const float *b,
                  int dIn, int dOut) {
  v128_t sum[4][4];
  for (int r = 0; r < R; r++)
    for (int v = 0; v < V; v++)
      sum[r][v] = wasm_v128_load(b + 4 * v);
  for (int i = 0; i < dIn; i++) {
    v128_t w[4];
    for (int v = 0; v < V; v++)
      w[v] = wasm_v128_load(WT + i * 4 * V + 4 * v);
    for (int r = 0; r < R; r++) {
      v128_t x = wasm_v128_load32_splat(X + r * dIn + i);
      for (int v = 0; v < V; v++)
        sum[r][v] = wasm_f32x4_relaxed_madd(w[v], x, sum[r][v]);
    }
  }
  for (int r = 0; r < R; r++)
    for (int v = 0; v < V; v++)
      wasm_v128_store(Y + r * dOut + 4 * v, sum[r][v]);
}

// Rows in blocks of R, outputs 16 at a time, then 4 at a time. The strip of output o starts
// o * dIn into WT, after the dIn rows of each strip before it.
INLINE void rows(int R, float *Y, const float *X, const float *WT, const float *b,
                 int dIn, int dOut) {
  int o = 0;
  for (; o + 16 <= dOut; o += 16)
    block(R, 4, Y + o, X, WT + o * dIn, b + o, dIn, dOut);
  for (; o < dOut; o += 4)
    block(R, 1, Y + o, X, WT + o * dIn, b + o, dIn, dOut);
}

INLINE void linear(float *Y, const float *X, int n, const float *WT, const float *b,
                   int dIn, int dOut) {
  int s = 0;
  for (; s + 4 <= n; s += 4)
    rows(4, Y + s * dOut, X + s * dIn, WT, b, dIn, dOut);
  for (; s < n; s++)
    rows(1, Y + s * dOut, X + s * dIn, WT, b, dIn, dOut);
}
