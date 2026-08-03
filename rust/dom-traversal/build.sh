#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

wasm="dom_traversal"
webdir="rust/dom-traversal"

RUSTFLAGS="-Clink-arg=--import-memory -Clink-arg=--skip-wit-component" cargo build --release
~/src/wasm-tools/target/debug/wasm-tools component new $PWD/target/wasm32-wasip2/release/dom_traversal.wasm -o $PWD/target/wasm32-wasip2/release/dom_traversal.wasm

component="$PWD/target/wasm32-wasip2/release/$wasm.wasm"
../../web/transpile.sh "$component" "$webdir/jco"
mkdir -p "../../web/$webdir/native"
cp "$component" "../../web/$webdir/native/"
