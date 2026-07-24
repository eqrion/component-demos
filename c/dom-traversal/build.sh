#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

webdir="c/dom-traversal"
wasm="dom_traversal"
bind="dt"

sdk="../../_wasi-sdk"
clang="$sdk/bin/clang"
sysroot="$sdk/share/wasi-sysroot"

wit-bindgen c --out-dir bindings wit --rename-world "$bind"

mkdir -p build
$clang -c -O2 -target wasm32-wasip2 --sysroot="$sysroot" \
  "$wasm".c -o "build/$wasm.o"
$clang -c -O2 -target wasm32-wasip2 --sysroot="$sysroot" \
  bindings/"$bind".c -o "build/${bind}_bindings.o"
$clang -target wasm32-wasip2 --sysroot="$sysroot" \
  -mexec-model=reactor \
  -Wl,--no-entry \
  "build/$wasm.o" "build/${bind}_bindings.o" bindings/"$bind"_component_type.o \
  -o "build/$wasm.wasm"

component="$PWD/build/$wasm.wasm"
../../web/transpile.sh "$component" "$webdir/jco"
mkdir -p "../../web/$webdir/native"
cp "$component" "../../web/$webdir/native/"
