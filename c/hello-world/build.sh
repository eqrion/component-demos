#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

wasm="hello_world"
webdir="c/hello-world"

sdk="../../_wasi-sdk"
clang="$sdk/bin/clang"
sysroot="$sdk/share/wasi-sysroot"

wit-bindgen c wit --out-dir bindings

mkdir -p build
$clang -c -O1 -target wasm32-wasip2 --sysroot="$sysroot" \
  main.c -o build/main.o
$clang -c -O1 -target wasm32-wasip2 --sysroot="$sysroot" \
  bindings/hello_world.c -o build/hello_world_bindings.o
# Link (reactor model: exports an init, no `main`). The component type object
# teaches wasm-component-ld how to wrap the core module as a component.
$clang -target wasm32-wasip2 --sysroot="$sysroot" \
  -mexec-model=reactor \
  -Wl,--no-entry \
  build/main.o build/hello_world_bindings.o bindings/hello_world_component_type.o \
  -o "build/$wasm.wasm"

component="$PWD/build/$wasm.wasm"
../../web/transpile.sh "$component" "$webdir/jco"
mkdir -p "../../web/$webdir/native"
cp "$component" "../../web/$webdir/native/"
