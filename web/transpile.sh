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

host="../../../host/web-host.js"

./node_modules/.bin/jco transpile "$component" \
    --map document="$host#Document" \
    --map dom-token-list="$host#DomTokenList" \
    --map canvas-rendering-context2d="$host#CanvasRenderingContext2d" \
    --map element="$host#Element" \
    --map html-element="$host#HtmlElement" \
    --map node="$host#Node" \
    --map text="$host#Text" \
    --map trusted-html="$host#TrustedHtml" \
    --map trusted-script="$host#TrustedScript" \
    --map trusted-script-url="$host#TrustedScriptUrl" \
    --map window="$host#Window" \
    --map get-window="$host#getWindow" \
    --map now="$host#now" \
    --map element-as-node="$host#elementAsNode" \
    --map text-as-node="$host#textAsNode" \
    -o "$outdir"

# Emit a .wat next to each core wasm as a debugging aid (needs wasm-tools).
shopt -s nullglob
for w in "$outdir"/*.wasm; do
    wasm-tools print "$w" -o "${w%.wasm}.wat"
done
shopt -u nullglob
