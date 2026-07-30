#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

webdir="cpp/string-marshalling"

./component/build.sh
./emscripten/build.sh
./em-js/build.sh

component="$PWD/component/build/string_marshalling.wasm"
../../web/transpile.sh "$component" "$webdir/jco"
mkdir -p "../../web/$webdir/native"
cp "$component" "../../web/$webdir/native/"

mkdir -p "../../web/$webdir/emscripten"
cp emscripten/build/string_marshalling.mjs emscripten/build/string_marshalling.wasm \
  "../../web/$webdir/emscripten/"

mkdir -p "../../web/$webdir/em-js"
cp em-js/build/string_marshalling.mjs em-js/build/string_marshalling.wasm \
  "../../web/$webdir/em-js/"
