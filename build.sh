#!/usr/bin/env bash
#   ./build.sh            build + transpile in web/gen
#   ./build.sh --dev      ... then start the Vite dev server
#   ./build.sh --build    ... then produce a production build in web/dist
#   ./build.sh --preview  ... then produce a production build and preview it

set -euo pipefail
cd "$(dirname "$0")"

demos=(
    hello-world
    todomvc
    dom-traversal
    string-marshalling
    attribute-churn
    dom-query
    table-rows
    canvas-draw
    canvas-pixels
    vdom-diff
)

# Parse the (single) optional flag.
flag=""
if [[ $# -gt 0 ]]; then
    case "$1" in
        --dev|--build|--preview) flag="$1" ;;
        *)
            echo "usage: $0 [--dev|--build|--preview]" >&2
            exit 2
            ;;
    esac
fi

# Build both demo components to core wasm + adapt into components.
build_wasm() {
    echo "======== BUILDING ========"
    for demo in "${demos[@]}"; do
        (cd "$demo" && cargo component build)
    done
}

# Transpile the built components into web/gen/, wiring the `webidl:baseline/web`
# import to the hand-written host glue in web/host/web-host.js (see that file
# and ~/src/webidl-index/canonwit/JCO_COMPAT.md for why we don't use jco's
# zero-config WebIDL binding here).
transpile() {
    echo "======== TRANSPILING ========"
    cd web
    if [[ ! -d node_modules ]]; then
        printf 'web/node_modules is missing. Run "npm install"? [y/N] '
        read -r reply
        if [[ "$reply" == [Yy] || "$reply" == [Yy][Ee][Ss] ]]; then
            npm install
        else
            exit 1
        fi
    fi
    for demo in "${demos[@]}"; do
        wasm="${demo//-/_}"
        ./node_modules/.bin/jco transpile "../$demo/target/wasm32-wasip1/debug/$wasm.wasm" \
            --map webidl:baseline/web=../../host/web-host.js -o "gen/$demo"
        for wasm_file in "gen/$demo"/*.wasm; do
            wasm-tools print "$wasm_file" -o "${wasm_file%.wasm}.wat"
        done
    done
    cd ..
}

build_wasm
transpile

case "$flag" in
    --dev)
        cd web && npx vite
        ;;
    --build)
        cd web && npx vite build
        ;;
    --preview)
        (cd web && npx vite build)
        cd web && npx vite preview
        ;;
esac
