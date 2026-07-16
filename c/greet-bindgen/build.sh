#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

webdir="c/greet-bindgen"

mkdir -p build
wit-bindgen c --out-dir bindings greet.wit

clang -c -O1 -target wasm32-wasip2 --sysroot=../../_sysroot \
  greet.c -o build/greet.o
clang -c -O1 -target wasm32-wasip2 --sysroot=../../_sysroot \
  bindings/greet.c -o build/greet_bindings.o
clang -target wasm32-wasip2 --sysroot=../../_sysroot \
  -mexec-model=reactor \
  -Wl,--no-entry \
  build/greet.o build/greet_bindings.o bindings/greet_component_type.o \
  -o build/greet.wasm

component="$PWD/build/greet.wasm"
../../web/transpile.sh "$component" "$webdir/jco"
mkdir -p "../../web/$webdir/native"
cp "$component" "../../web/$webdir/native/"
