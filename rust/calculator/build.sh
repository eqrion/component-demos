#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

webdir="rust/calculator"

cargo build --release

component="$PWD/target/wasm32-wasip2/release/calculator.wasm"
../../web/transpile.sh "$component" "$webdir/jco"
mkdir -p "../../web/$webdir/native"
cp "$component" "../../web/$webdir/native/"
