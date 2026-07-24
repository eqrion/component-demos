#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

emsdk="$(cd ../../.. && pwd)/_emsdk"
export EM_CONFIG="$emsdk/.emscripten"
export EMSDK_PYTHON="$(echo "$emsdk"/python/*/bin/python3)"

mkdir -p build
"$emsdk/upstream/emscripten/em++" -O2 -std=c++20 \
  -lembind \
  -sMODULARIZE -sEXPORT_ES6 \
  -sENVIRONMENT=web \
  -sALLOW_MEMORY_GROWTH=1 \
  main.cpp -o build/canvas_pixels.mjs
