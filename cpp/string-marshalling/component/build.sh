#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

wasm="string_marshalling"

sdk="../../../_wasi-sdk"
clangxx="$sdk/bin/clang++"
sysroot="$sdk/share/wasi-sysroot"

../../unwitting-bindgen.sh wit --out-dir bindings

mkdir -p build
$clangxx -O2 -std=c++20 -nostdlib++ -fno-exceptions \
  -target wasm32-wasip2 --sysroot="$sysroot" -mexec-model=reactor \
  main.cpp ../../utils.cpp bindings/"$wasm".cpp bindings/"$wasm"_component_type.o \
  -o "build/$wasm.wasm"
