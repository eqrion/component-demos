#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

webdir="rust/table-update-wasm-bindgen"

RUSTFLAGS='--cfg=web_sys_unstable_apis' wasm-pack build --target web --release --out-dir pkg

mkdir -p "../../web/$webdir"
cp pkg/table_update_wasm_bindgen.js pkg/table_update_wasm_bindgen_bg.wasm \
  "../../web/$webdir/"
