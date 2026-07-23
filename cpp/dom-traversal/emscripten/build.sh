#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

mkdir -p build
em++ -O2 -std=c++20 \
  -lembind \
  -sMODULARIZE -sEXPORT_ES6 \
  -sENVIRONMENT=web \
  -sALLOW_MEMORY_GROWTH=1 \
  main.cpp -o build/dom_traversal.mjs
