// The whole forward pass in WebAssembly (forward.c, compiled to forward.wasm by build.sh). JS
// only lays out the weights and a tile's buffers in the WebAssembly memory, describes them to
// forward.c in a Model, and copies each batch in and out. forward.c loops over the tiles.
//
// It takes the same model object as naive.js.
const fs = require("fs");
const path = require("path");

const wasmModule = new WebAssembly.Module(fs.readFileSync(path.join(__dirname, "forward.wasm")));
const MAX_BLOCKS = 8;
// Rows that go through the model together; 4 is the fastest.
const TILE = 4;

const roundUp4 = k => Math.ceil(k / 4) * 4;

// W of shape (d_out, d_in) as WT of shape (d_in, dOutPad), padding each row with zeros, then
// packed for linear.h.
function transpose(W, dIn, dOut, dOutPad) {
  const WT = new Float32Array(dIn * dOutPad);
  for (let o = 0; o < dOut; o++) {
    for (let i = 0; i < dIn; i++) {
      WT[i * dOutPad + o] = W[o * dIn + i];
    }
  }
  return pack(WT, dIn, dOutPad);
}

// WT of shape (dIn, dOut) as strips of 16 columns, then of 4, each strip's rows one after
// another, in the order linear.h reads them: the strip of column o starts at o * dIn.
function pack(WT, dIn, dOut) {
  const P = new Float32Array(dIn * dOut);
  let at = 0;
  for (let o = 0; o < dOut; ) {
    const w = o + 16 <= dOut ? 16 : 4;
    for (let i = 0; i < dIn; i++) {
      for (let c = 0; c < w; c++) P[at++] = WT[i * dOut + o + c];
    }
    o += w;
  }
  return P;
}

// A forward.c instance holding the model's weights, transposed and packed, and the buffers of
// a tile.
function makeEngine(model, tile = TILE) {
  const d = model.emb.b.length;
  const dIn = model.emb.W.length / d;
  const hidden = model.blocks[0].gate.length / d;
  const dOut = model.head.b.length;
  const dOutPad = roundUp4(dOut);
  if (d % 4 || hidden % 4) throw Error("the widths d and hidden must be multiples of 4");
  if (model.blocks.length > MAX_BLOCKS) throw Error(`at most ${MAX_BLOCKS} blocks`);

  // Everything forward.c reads or writes, by name.
  const arrays = {
    embT: transpose(model.emb.W, dIn, d, d),
    embB: model.emb.b,
    norm: model.norm,
    headT: transpose(model.head.W, d, dOut, dOutPad),
    headB: Float32Array.from({ length: dOutPad }, (_, k) => model.head.b[k] || 0),
    zeros: new Float32Array(Math.max(d, 2 * hidden)),
    h: new Float32Array(tile * d),
    n: new Float32Array(tile * d),
    gateUp: new Float32Array(tile * 2 * hidden),
    act: new Float32Array(tile * hidden),
    down: new Float32Array(tile * d),
    out: new Float32Array(tile * dOutPad),
  };
  model.blocks.forEach((block, k) => {
    const gateUp = new Float32Array(2 * hidden * d);
    gateUp.set(block.gate);
    gateUp.set(block.up, hidden * d);
    arrays[`norm${k}`] = block.norm;
    arrays[`gateUpT${k}`] = transpose(gateUp, d, 2 * hidden, 2 * hidden);
    arrays[`downT${k}`] = transpose(block.down, hidden, d, d);
  });

  // Copy each into the instance's memory after its own data and stack, 16-byte aligned,
  // keeping a view of each, with room for the Model at the end.
  const { exports } = new WebAssembly.Instance(wasmModule);
  const base = roundUp4(Math.ceil(exports.__heap_base.value / 4)) * 4;
  const modelInts = 12 + 6 + 3 * MAX_BLOCKS;
  let bytes = base + modelInts * 4;
  for (const a of Object.values(arrays)) bytes += roundUp4(a.length) * 4;
  exports.memory.grow(Math.ceil(bytes / 65536));
  const mem = {};
  let at = base;
  for (const [name, a] of Object.entries(arrays)) {
    mem[name] = new Float32Array(exports.memory.buffer, at, a.length);
    mem[name].set(a);
    at += roundUp4(a.length) * 4;
  }

  // The Model, in forward.c's field order: sizes, then the address of each array.
  const modelAt = at;
  const fields = new Int32Array(exports.memory.buffer, modelAt, modelInts);
  const addr = name => mem[name].byteOffset;
  fields.set([dIn, d, hidden, dOut, dOutPad, model.blocks.length]);
  fields.set(["embT", "embB", "norm", "headT", "headB", "zeros"].map(addr), 6);
  fields.set(["h", "n", "gateUp", "act", "down", "out"].map(addr), 12);
  model.blocks.forEach((_, k) => fields.set([`norm${k}`, `gateUpT${k}`, `downT${k}`].map(addr), 18 + 3 * k));

  // Each batch's inputs and outputs go after the Model, growing the memory as needed. Growing
  // detaches the views above, so forwardBatch makes its own.
  const batchAt = roundUp4(Math.ceil((modelAt + modelInts * 4) / 4)) * 4;
  return { exports, modelAt, batchAt, tile, dIn, dOut, dOutPad };
}

// X of shape (B, d_in) to out of shape (B, d_out), both flat and row-major.
function forwardBatch(engine, X, out) {
  const { exports, modelAt, batchAt, tile, dIn, dOut } = engine;
  const { memory } = exports;
  const B = X.length / dIn;
  const pX = batchAt, pOut = batchAt + B * dIn * 4;
  const end = pOut + B * dOut * 4;
  if (end > memory.buffer.byteLength) memory.grow(Math.ceil((end - memory.buffer.byteLength) / 65536));
  new Float32Array(memory.buffer, pX, B * dIn).set(X);
  exports.forward_batch(modelAt, pX, pOut, B, tile);
  out.set(new Float32Array(memory.buffer, pOut, B * dOut));
}

module.exports = { TILE, makeEngine, forwardBatch };
