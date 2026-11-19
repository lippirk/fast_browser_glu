# fast GLU in the browser

The forward pass of a GLU resnet in JS, two ways, both naive and fast.
This code was produced when writing [this blog post](https://benanson.com/261116-fast-glu/glu).

We show two sets of artifacts,

- `naive.js`, a naive implementation in plain JS
- `fast.js` + `forward.c` + `linear.h`: the whole forward pass in wasm (this compiles to human-readable `forward.wat` and binary `forward.wasm`)

both these compute the following model:

```text
x => softmax . head . rmsNorm . glu_k . ... . glu_1 . emb $ x
glu(x) = x + W_down@(silu(W_gate@y) * (W_up@y)), where y = rmsNorm(x)
```

## Usage

```sh
./build.sh        # builds forward.wasm and forward.wat from forward.c
node example.js   # runs both implementations on a random model, and benchmarks them
node --test       # checks fast.js against naive.js
```

## minor comments

- precision: the `forward.c` implementation gives slightly different results since it uses fp32, whereas
the `naive.js` code uses fp64. However, they agree to about 1e-6.
- weight layout: this repo lays out the weights slightly differently from the blog post. This achieves slightly higher
performance. We explain it briefly below.

## packing weights differently

The blog post stores each weight matrix transposed, as `WT` of shape `(d_in, d_out)`, row-major.
This looks like,

```text
  WT, (d_in, d_out):

           0 ......... 15 16 ........ 31
    row 0 [      a0      |      b0      ]
    row 1 [      a1      |      b1      ]
    row 2 [      a2      |      b2      ]

  in memory, as in the post (row after row):

    | a0 | b0 | a1 | b1 | a2 | b2 |
```

To compute outputs 0..15, `linear.h` walks down the rows of `WT`, reading columns 0..15 of
each: `a0`, then `a1`, then `a2`. Because we are storing the whole row contiguously, it has to jump over `b0` and `b1` in
between. Outputs 16..31 then read `b0`, `b1`, `b2` the same way. So we store each strip of
16 columns' rows together, and each block of outputs reads its weights in one pass:

```text
    | a0 | a1 | a2 | b0 | b1 | b2 |
    '--- strip 0 --'--- strip 1 --'
```

`pack` in `fast.js` does this. When `d_out` isn't a multiple of 16, the last few columns go in
strips of 4.
