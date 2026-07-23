#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

wasm="hello_world"
webdir="cpp/hello-world"

# Generate the guest bindings from the WIT. The `c` generator emits C that is
# consumed directly from C++ (its header is wrapped in `extern "C"`).
wit-bindgen c wit --out-dir bindings

mkdir -p build
# main.cpp is C++; the generated bindings are C. Compile each with the matching
# driver, targeting wasm32-wasip2 against the shared wasi-sdk sysroot. We use no
# STL/exceptions, so -fno-exceptions keeps the C++ runtime out of the module.
clang++ -c -O1 -std=c++20 -fno-exceptions -fno-rtti \
  -target wasm32-wasip2 --sysroot=../../_sysroot \
  main.cpp -o build/main.o
clang -c -O1 -target wasm32-wasip2 --sysroot=../../_sysroot \
  bindings/hello_world.c -o build/hello_world_bindings.o
# Link (reactor model: exports an init, no `main`). We use no STL, so
# -nostdlib++ keeps libc++ out entirely (and sidesteps the wasip2 C++ multilib
# path). The component type object teaches wasm-component-ld how to wrap the
# core module as a component.
clang++ -target wasm32-wasip2 --sysroot=../../_sysroot \
  -nostdlib++ \
  -mexec-model=reactor \
  -Wl,--no-entry \
  build/main.o build/hello_world_bindings.o bindings/hello_world_component_type.o \
  -o "build/$wasm.wasm"

component="$PWD/build/$wasm.wasm"
../../web/transpile.sh "$component" "$webdir/jco"
mkdir -p "../../web/$webdir/native"
cp "$component" "../../web/$webdir/native/"
