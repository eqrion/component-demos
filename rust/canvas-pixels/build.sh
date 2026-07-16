#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

wasm="canvas_pixels"
webdir="rust/canvas-pixels"

cargo component build

component="$PWD/target/wasm32-wasip1/debug/$wasm.wasm"
../../web/transpile.sh "$component" "$webdir/jco"
mkdir -p "../../web/$webdir/native"
cp "$component" "../../web/$webdir/native/"
