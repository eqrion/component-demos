#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

wasm="attribute_churn"
webdir="rust/attribute-churn"

cargo component build

component="$PWD/target/wasm32-wasip1/debug/$wasm.wasm"
../../web/transpile.sh "$component" "$webdir/jco"
mkdir -p "../../web/$webdir/native"
cp "$component" "../../web/$webdir/native/"
