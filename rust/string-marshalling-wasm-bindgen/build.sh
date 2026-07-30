#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

webdir="rust/string-marshalling-wasm-bindgen"

RUSTFLAGS='--cfg=web_sys_unstable_apis' wasm-pack build --target web --release --out-dir pkg

mkdir -p "../../web/$webdir"
cp pkg/string_marshalling_wasm_bindgen.js pkg/string_marshalling_wasm_bindgen_bg.wasm \
  "../../web/$webdir/"
