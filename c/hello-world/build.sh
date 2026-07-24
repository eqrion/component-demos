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
$clang -c -O1 -target wasm32-wasip2 --sysroot="$sysroot" \
  main.c -o build/main.o
$clang -c -O1 -target wasm32-wasip2 --sysroot="$sysroot" \
  bindings/"$bind".c -o "build/${bind}_bindings.o"
# Link (reactor model: exports an init, no `main`). The component type object
# teaches wasm-component-ld how to wrap the core module as a component.
$clang -target wasm32-wasip2 --sysroot="$sysroot" \
  -mexec-model=reactor \
  -Wl,--no-entry \
  build/main.o "build/${bind}_bindings.o" bindings/"$bind"_component_type.o \
  -o "build/$wasm.wasm"

component="$PWD/build/$wasm.wasm"
../../web/transpile.sh "$component" "$webdir/jco"
mkdir -p "../../web/$webdir/native"
cp "$component" "../../web/$webdir/native/"
