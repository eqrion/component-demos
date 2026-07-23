#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

webdir="c/greet-freestanding"

sdk="../../_wasi-sdk"
clang="$sdk/bin/clang"

mkdir -p build
$clang -c -O1 -target wasm32-wasip2 greet.c -o build/greet.o
$clang -nostdlib -target wasm32-wasip2 \
  -Wl,--no-entry \
  -Wl,--component-type,greet.wit \
  build/greet.o -o build/greet.wasm

component="$PWD/build/greet.wasm"
../../web/transpile.sh "$component" "$webdir/jco"
mkdir -p "../../web/$webdir/native"
cp "$component" "../../web/$webdir/native/"
