// A naive fp32 forward pass of the GLU resnet MLP: plain loops, a fresh array per step.
//
// Every weight is a flat Float32Array in row-major order: a (d_out, d_in) matrix W has
// W[o][i] at W[o * d_in + i].

// y = W x + b, for W of shape (d_out, d_in). b may be null.
function linear(x, W, b) {
  const dIn = x.length;
  const dOut = W.length / dIn;
  const y = new Float32Array(dOut);
  for (let o = 0; o < dOut; o++) {
    let sum = b ? b[o] : 0;
    for (let i = 0; i < dIn; i++) {
      sum += W[o * dIn + i] * x[i];
    }
    y[o] = sum;
  }
  return y;
}

// x / rms(x) * w, where rms(x) = sqrt(mean(x^2) + eps).
const fp32MachineEps = 1.1920929e-7;
function rmsNorm(x, w, eps = fp32MachineEps) {
  const d = x.length;
  let sumSq = 0;
  for (let i = 0; i < d; i++) {
    sumSq += x[i] * x[i];
  }
  const scale = 1 / Math.sqrt(sumSq / d + eps);
  const y = new Float32Array(d);
  for (let i = 0; i < d; i++) {
    y[i] = x[i] * scale * w[i];
  }
  return y;
}

function silu(z) {
  return z / (1 + Math.exp(-z));
}

function softmax(z) {
  const max = Math.max(...z);
  const y = new Float32Array(z.length);
  let total = 0;
  for (let k = 0; k < z.length; k++) {
    y[k] = Math.exp(z[k] - max);
    total += y[k];
  }
  for (let k = 0; k < z.length; k++) {
    y[k] /= total;
  }
  return y;
}

// x + W_down (silu(W_gate n) * (W_up n)), where n = rmsNorm(x).
function gluBlock(x, block) {
  const n = rmsNorm(x, block.norm);
  const gate = linear(n, block.gate, null);
  const up = linear(n, block.up, null);
  const h = new Float32Array(gate.length);
  for (let j = 0; j < h.length; j++) {
    h[j] = silu(gate[j]) * up[j];
  }
  const down = linear(h, block.down, null);
  const y = new Float32Array(x.length);
  for (let i = 0; i < x.length; i++) {
    y[i] = x[i] + down[i];
  }
  return y;
}

// One input x of shape (d_in) to output probabilities of shape (d_out).
function forward(model, x) {
  let h = linear(x, model.emb.W, model.emb.b);
  for (const block of model.blocks) {
    h = gluBlock(h, block);
  }
  const logits = linear(rmsNorm(h, model.norm), model.head.W, model.head.b);
  return softmax(logits);
}

// A batch of inputs, one at a time.
function forwardBatch(model, xs) {
  return xs.map(x => forward(model, x));
}

module.exports = { linear, rmsNorm, silu, softmax, gluBlock, forward, forwardBatch };
