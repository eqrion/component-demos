#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

webdir="c/calculator"

mkdir -p build
# Compile and link separately so we can optimize without binaryen, which is on
# by default and chokes on components.
clang -c -O1 -target wasm32-wasip2 calculator.c -o build/calculator.o
clang -nostdlib -target wasm32-wasip2 \
  -Wl,--no-entry -Wl,--export-all \
  -Wl,--component-type,calculator.wit \
  build/calculator.o -o build/calculator.wasm

component="$PWD/build/calculator.wasm"
../../web/transpile.sh "$component" "$webdir/jco"
mkdir -p "../../web/$webdir/native"
cp "$component" "../../web/$webdir/native/"
