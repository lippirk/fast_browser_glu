// fast.js against naive.js on random models and inputs: node --test
//
// They can't agree exactly. naive.js adds up each dot product in float64 (a JS number) and
// uses Math.exp, while forward.c works in float32 throughout, with fused multiply-adds and its
// own exp. The difference is float32 rounding, not a mistake: against a float64 version of the
// model, forward.c is about as close as naive.js with every sum rounded to float32. On the post's
// trained model it's within 8e-7 of PyTorch in float64, where PyTorch in float32 is within 9e-7.
// So 2e-6 is float32 rounding with a little room. A probability's rounding error grows with the
// size of the logits, so the peaked softmax below, with logits in the hundreds, gets more.
const test = require("node:test");
const assert = require("node:assert");
const naive = require("./naive.js");
const fast = require("./fast.js");
const { rng, randomModel } = require("./model.js");

const TOLERANCE = 2e-6;

// The largest |fast - naive| over the outputs of B random inputs, each uniform on
// [-scale, scale], checking that each row of fast's outputs is a distribution.
function worstError(model, engine, B, scale, seed) {
  const dIn = model.emb.W.length / model.emb.b.length, dOut = model.head.b.length;
  const random = rng(seed);
  const X = Float32Array.from({ length: B * dIn }, () => (2 * random() - 1) * scale);
  const got = new Float32Array(B * dOut);
  fast.forwardBatch(engine, X, got);
  let worst = 0;
  for (let s = 0; s < B; s++) {
    const want = naive.forward(model, X.subarray(s * dIn, (s + 1) * dIn));
    const row = got.subarray(s * dOut, (s + 1) * dOut);
    let total = 0;
    for (let k = 0; k < dOut; k++) {
      assert.ok(row[k] >= 0 && row[k] <= 1, `output ${row[k]} of row ${s} isn't a probability`);
      worst = Math.max(worst, Math.abs(row[k] - want[k]));
      total += row[k];
    }
    assert.ok(Math.abs(total - 1) < 1e-6, `row ${s} sums to ${total}`);
  }
  return worst;
}

// Batch sizes that aren't multiples of the tile, or of 4, and one engine for all of them, so
// that the memory grows and shrinks between calls.
const BATCHES = [1, 3, 7, 64, 130, 2];

const MODELS = {
  "the post's sizes": { dIn: 226, d: 128, hidden: 256, dOut: 6, blocks: 2 },
  // d_out = 3 pads the head to 4; 2 hidden = 24 outputs takes linear's 4 at a time tail.
  "small and awkward sizes": { dIn: 10, d: 8, hidden: 12, dOut: 3, blocks: 1 },
  "more blocks, wider output": { dIn: 37, d: 64, hidden: 96, dOut: 17, blocks: 5 },
  // The final RMSNorm keeps the logits near 1 whatever the inputs. A head 100 times bigger
  // spreads them by hundreds, so the softmax has outputs that underflow to 0.
  // A float32 logit near 200 is only good to about 1e-5.
  "a peaked softmax": { dIn: 226, d: 128, hidden: 256, dOut: 6, blocks: 2, headScale: 100, tolerance: 3e-5 },
};

for (const [name, { headScale = 1, tolerance = TOLERANCE, ...sizes }] of Object.entries(MODELS)) {
  test(`fast matches naive: ${name}`, () => {
    const model = randomModel({ ...sizes, seed: 1 });
    model.head.W = model.head.W.map(w => w * headScale);
    for (const tile of [1, 4, 5, 64]) {
      const engine = fast.makeEngine(model, tile);
      // Large inputs saturate SiLU and push the logits apart, through the edges of exp.
      for (const scale of [1, 20, 200]) {
        BATCHES.forEach((B, i) => {
          const worst = worstError(model, engine, B, scale, 100 * i + scale);
          assert.ok(worst < tolerance, `tile ${tile}, scale ${scale}, B = ${B}: |fast - naive| = ${worst}`);
        });
      }
    }
  });
}

test("forwardBatch writes only the caller's output", () => {
  const model = randomModel();
  const engine = fast.makeEngine(model);
  const X = new Float32Array(3 * 226).fill(0.5);
  const out = new Float32Array(3 * 6 + 1).fill(-1);
  fast.forwardBatch(engine, X, out.subarray(0, 18));
  assert.strictEqual(out[18], -1);
  // The same input gives the same output on every row.
  for (let k = 0; k < 6; k++) assert.strictEqual(out[k], out[12 + k]);
});

test("makeEngine rejects widths that aren't multiples of 4", () => {
  assert.throws(() => fast.makeEngine(randomModel({ d: 10 })), /multiples of 4/);
  assert.throws(() => fast.makeEngine(randomModel({ hidden: 30 })), /multiples of 4/);
});
