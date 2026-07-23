#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

wasm="dom_traversal"

sdk="../../../_wasi-sdk"
clangxx="$sdk/bin/clang++"
sysroot="$sdk/share/wasi-sysroot"

../../unwitting-bindgen.sh wit --out-dir bindings

mkdir -p build
common_flags=(-O2 -std=c++20 -fno-exceptions -fno-rtti
  -target wasm32-wasip2 --sysroot="$sysroot")
$clangxx -c "${common_flags[@]}" main.cpp -o build/main.o
$clangxx -c "${common_flags[@]}" bindings/"$wasm".cpp -o build/"$wasm"_bindings.o
$clangxx -target wasm32-wasip2 --sysroot="$sysroot" \
  -nostdlib++ \
  -mexec-model=reactor \
  -Wl,--no-entry \
  build/main.o build/"$wasm"_bindings.o bindings/"$wasm"_component_type.o \
  -o "build/$wasm.wasm"
