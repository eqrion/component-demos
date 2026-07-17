#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

webdir="rust/dom-query"

cargo build --release
wasm-tools print -o dom_query.wat $PWD/target/wasm32-wasip2/release/dom_query.wasm

component="$PWD/target/wasm32-wasip2/release/dom_query.wasm"
../../web/transpile.sh "$component" "$webdir/jco"
mkdir -p "../../web/$webdir/native"
cp "$component" "../../web/$webdir/native/"
