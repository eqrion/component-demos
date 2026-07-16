#!/usr/bin/env bash
# usage: web/transpile.sh <component.wasm (absolute path)> <outdir under web/>
#   e.g. web/transpile.sh /abs/path/hello_world.wasm rust/hello-world/jco
#
# The --map value is written into the generated JS as an import specifier, so it
# is resolved relative to the OUTPUT dir. Output dirs are <lang>/<example>/jco,
# i.e. three levels under web/, so ../../../host reaches web/host/web-host.js.
set -euo pipefail
cd "$(dirname "$0")"

component="$1"
outdir="$2"

./node_modules/.bin/jco transpile "$component" \
    --map webidl:baseline/web=../../../host/web-host.js \
    -o "$outdir"

# Emit a .wat next to each core wasm as a debugging aid (needs wasm-tools).
for w in "$outdir"/*.wasm; do
    wasm-tools print "$w" -o "${w%.wasm}.wat"
done
