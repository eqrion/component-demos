#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

webdir="cpp/dom-query"

./component/build.sh
./emscripten/build.sh

component="$PWD/component/build/dom_query.wasm"
../../web/transpile.sh "$component" "$webdir/jco"
mkdir -p "../../web/$webdir/native"
cp "$component" "../../web/$webdir/native/"

mkdir -p "../../web/$webdir/emscripten"
cp emscripten/build/dom_query.mjs emscripten/build/dom_query.wasm \
  "../../web/$webdir/emscripten/"
