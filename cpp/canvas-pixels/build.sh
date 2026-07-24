#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

webdir="cpp/canvas-pixels"

./component/build.sh
./emscripten/build.sh

component="$PWD/component/build/canvas_pixels.wasm"
../../web/transpile.sh "$component" "$webdir/jco"
mkdir -p "../../web/$webdir/native"
cp "$component" "../../web/$webdir/native/"

mkdir -p "../../web/$webdir/emscripten"
cp emscripten/build/canvas_pixels.mjs emscripten/build/canvas_pixels.wasm \
  "../../web/$webdir/emscripten/"
