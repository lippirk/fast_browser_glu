// How to use both implementations: node example.js
//
// Both take the same model object (see model.js). Here it has random weights, at the sizes of
// the backgammon model in the post: 226 inputs, d = 128, hidden = 256, 2 blocks, 6 outputs.
const naive = require("./naive.js");
const fast = require("./fast.js");
const { randomModel } = require("./model.js");

const model = randomModel({ dIn: 226, d: 128, hidden: 256, dOut: 6, blocks: 2 });
const dIn = 226, dOut = 6;

// A batch of B inputs, as one flat row-major Float32Array of shape (B, d_in).
const B = 4096;
const X = Float32Array.from({ length: B * dIn }, () => Math.random());

// naive.js: one input at a time. forward takes a Float32Array of length d_in and returns the
// d_out probabilities; forwardBatch maps it over a list of inputs.
const xs = Array.from({ length: B }, (_, s) => X.subarray(s * dIn, (s + 1) * dIn));
let t0 = performance.now();
const naiveOut = naive.forwardBatch(model, xs);
const naiveMs = performance.now() - t0;

// fast.js: makeEngine copies the weights into a WebAssembly instance once, and forwardBatch
// writes the probabilities of a whole batch into an array the caller allocates, of shape
// (B, d_out). Reuse the engine across batches, of any size.
const engine = fast.makeEngine(model);
const fastOut = new Float32Array(B * dOut);
fast.forwardBatch(engine, X, fastOut);  // warm up, then time the second call
t0 = performance.now();
fast.forwardBatch(engine, X, fastOut);
const fastMs = performance.now() - t0;

const show = p => Array.from(p, v => v.toFixed(6)).join(" ");
console.log("first input's probabilities");
console.log("  naive:", show(naiveOut[0]));
console.log("  fast: ", show(fastOut.subarray(0, dOut)));
let worst = 0;
naiveOut.forEach((p, s) => p.forEach((v, k) => { worst = Math.max(worst, Math.abs(v - fastOut[s * dOut + k])); }));
console.log(`max |fast - naive| over ${B} inputs: ${worst.toExponential(2)}`);
console.log(`naive: ${(naiveMs * 1000 / B).toFixed(1)} µs per input, fast: ${(fastMs * 1000 / B).toFixed(1)} µs per input`);
