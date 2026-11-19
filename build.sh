#!/bin/sh
# Builds forward.wasm from forward.c, with Homebrew's LLVM, and writes it out as text in
# forward.wat with wabt (brew install llvm lld wabt). Set CLANG, WASM_LD and WASM2WAT to use
# others. forward.wat is checked in and forward.wasm isn't, so this is needed once after a
# checkout, and again after editing forward.c or linear.h.
set -e
cd "$(dirname "$0")"
CLANG=${CLANG:-/opt/homebrew/opt/llvm/bin/clang}
WASM_LD=${WASM_LD:-/opt/homebrew/opt/lld/bin/wasm-ld}
WASM2WAT=${WASM2WAT:-/opt/homebrew/bin/wasm2wat}
"$CLANG" --target=wasm32 -O3 -msimd128 -mrelaxed-simd -nostdlib -fuse-ld="$WASM_LD" \
  -Wl,--no-entry -Wl,--export=__heap_base forward.c -o forward.wasm
"$WASM2WAT" forward.wasm -o forward.wat
