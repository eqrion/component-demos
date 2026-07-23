#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

# Orchestrates the two C++ variants and copies all artifacts into the web tree.
# (The sub-builds only produce local build/ output; the web copy lives here.)
webdir="cpp/dom-traversal"

./component/build.sh
./emscripten/build.sh

# Component: transpile to jco + copy the raw component for the native backend.
component="$PWD/component/build/dom_traversal.wasm"
../../web/transpile.sh "$component" "$webdir/jco"
mkdir -p "../../web/$webdir/native"
cp "$component" "../../web/$webdir/native/"

# Emscripten: copy the ES6 loader + its wasm (kept together; the .mjs locates the
# .wasm relative to itself).
mkdir -p "../../web/$webdir/emscripten"
cp emscripten/build/dom_traversal.mjs emscripten/build/dom_traversal.wasm \
  "../../web/$webdir/emscripten/"
