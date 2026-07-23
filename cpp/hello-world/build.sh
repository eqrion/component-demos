#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

wasm="hello_world"
webdir="cpp/hello-world"

sdk="../../_wasi-sdk"
clangxx="$sdk/bin/clang++"
sysroot="$sdk/share/wasi-sysroot"

# Generate idiomatic C++ bindings that still compile to a flat component. See
# ../unwitting-bindgen.sh — it stands in for `wit-bindgen cpp` and hides the
# interface-wrapping / import-flattening dance.
../unwitting-bindgen.sh wit --out-dir bindings

mkdir -p build
# The bundled wasi-sdk clang auto-selects the libc++ eh/noeh multilib from
# -fno-exceptions; we use only header-only std facilities, so -nostdlib++ keeps
# libc++ out of the linked module.
common_flags=(-O1 -std=c++20 -fno-exceptions -fno-rtti
  -target wasm32-wasip2 --sysroot="$sysroot")
$clangxx -c "${common_flags[@]}" main.cpp -o build/main.o
$clangxx -c "${common_flags[@]}" bindings/"$wasm".cpp -o build/"$wasm"_bindings.o
$clangxx -target wasm32-wasip2 --sysroot="$sysroot" \
  -nostdlib++ \
  -mexec-model=reactor \
  -Wl,--no-entry \
  build/main.o build/"$wasm"_bindings.o bindings/"$wasm"_component_type.o \
  -o "build/$wasm.wasm"

component="$PWD/build/$wasm.wasm"
../../web/transpile.sh "$component" "$webdir/jco"
mkdir -p "../../web/$webdir/native"
cp "$component" "../../web/$webdir/native/"
