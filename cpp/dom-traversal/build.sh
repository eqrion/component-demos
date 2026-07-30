#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

webdir="cpp/dom-traversal"

./component/build.sh
./emscripten/build.sh
./em-js/build.sh

component="$PWD/component/build/dom_traversal.wasm"
../../web/transpile.sh "$component" "$webdir/jco"
mkdir -p "../../web/$webdir/native"
cp "$component" "../../web/$webdir/native/"

mkdir -p "../../web/$webdir/emscripten"
cp emscripten/build/dom_traversal.mjs emscripten/build/dom_traversal.wasm \
  "../../web/$webdir/emscripten/"

mkdir -p "../../web/$webdir/em-js"
cp em-js/build/dom_traversal.mjs em-js/build/dom_traversal.wasm \
  "../../web/$webdir/em-js/"
