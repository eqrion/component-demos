#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

wasm="canvas_pixels"
webdir="rust/canvas-pixels"

cargo build --release --target wasm32-wasip2

component="$PWD/target/wasm32-wasip2/release/$wasm.wasm"
../../web/transpile.sh "$component" "$webdir/jco"
mkdir -p "../../web/$webdir/native"
cp "$component" "../../web/$webdir/native/"
