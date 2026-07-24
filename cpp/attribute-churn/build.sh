#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

webdir="cpp/attribute-churn"

./component/build.sh
./emscripten/build.sh

component="$PWD/component/build/attribute_churn.wasm"
../../web/transpile.sh "$component" "$webdir/jco"
mkdir -p "../../web/$webdir/native"
cp "$component" "../../web/$webdir/native/"

mkdir -p "../../web/$webdir/emscripten"
cp emscripten/build/attribute_churn.mjs emscripten/build/attribute_churn.wasm \
  "../../web/$webdir/emscripten/"
