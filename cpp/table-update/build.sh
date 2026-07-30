#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

webdir="cpp/table-update"

./component/build.sh
./emscripten/build.sh
./em-js/build.sh

component="$PWD/component/build/table_update.wasm"
../../web/transpile.sh "$component" "$webdir/jco"
mkdir -p "../../web/$webdir/native"
cp "$component" "../../web/$webdir/native/"

mkdir -p "../../web/$webdir/emscripten"
cp emscripten/build/table_update.mjs emscripten/build/table_update.wasm \
  "../../web/$webdir/emscripten/"

mkdir -p "../../web/$webdir/em-js"
cp em-js/build/table_update.mjs em-js/build/table_update.wasm \
  "../../web/$webdir/em-js/"
