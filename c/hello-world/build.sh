#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

wasm="hello_world"
webdir="c/hello-world"
bind="hw"

sdk="../../_wasi-sdk"
clang="$sdk/bin/clang"
sysroot="$sdk/share/wasi-sysroot"

wit-bindgen c wit --out-dir bindings --rename-world "$bind"

mkdir -p build
$clang -O1 -target wasm32-wasip2 --sysroot="$sysroot" \
  -mexec-model=reactor \
  -Wl,--no-entry \
  main.c bindings/"$bind".c bindings/"$bind"_component_type.o \
  -o "build/$wasm.wasm"

component="$PWD/build/$wasm.wasm"
../../web/transpile.sh "$component" "$webdir/jco"
mkdir -p "../../web/$webdir/native"
cp "$component" "../../web/$webdir/native/"
