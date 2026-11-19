// The model object that naive.js and fast.js both take, with random weights:
//
//   { emb: { W, b }, blocks: [{ norm, gate, up, down }], norm, head: { W, b } }
//
// Every weight is a flat Float32Array in row-major order: a (d_out, d_in) matrix W has
// W[o][i] at W[o * d_in + i]. emb.W is (d, d_in), gate and up are (hidden, d), down is
// (d, hidden) and head.W is (d_out, d); the norms are RMSNorm weights of length d.

// A seeded uniform random number generator on [0, 1) (mulberry32), so runs repeat.
function rng(seed) {
  return () => {
    seed = (seed + 0x6d2b79f5) | 0;
    let t = Math.imul(seed ^ (seed >>> 15), 1 | seed);
    t = (t + Math.imul(t ^ (t >>> 7), 61 | t)) ^ t;
    return ((t ^ (t >>> 14)) >>> 0) / 4294967296;
  };
}

// A model of these sizes, with PyTorch's default nn.Linear initialisation: each weight and
// bias uniform on +-1/sqrt(fan_in). The norms' weights are near 1.
function randomModel({ dIn = 226, d = 128, hidden = 256, dOut = 6, blocks = 2, seed = 0 } = {}) {
  const random = rng(seed);
  const uniform = (length, bound) => Float32Array.from({ length }, () => (2 * random() - 1) * bound);
  const linear = (rows, cols) => uniform(rows * cols, 1 / Math.sqrt(cols));
  const norm = () => Float32Array.from({ length: d }, () => 1 + 0.2 * (random() - 0.5));
  return {
    emb: { W: linear(d, dIn), b: uniform(d, 1 / Math.sqrt(dIn)) },
    blocks: Array.from({ length: blocks }, () => ({
      norm: norm(),
      gate: linear(hidden, d),
      up: linear(hidden, d),
      down: linear(d, hidden),
    })),
    norm: norm(),
    head: { W: linear(dOut, d), b: uniform(dOut, 1 / Math.sqrt(d)) },
  };
}

module.exports = { rng, randomModel };
