#!/usr/bin/env bash
#   ./build.sh            build every example (each example's own build.sh)
#   ./build.sh --dev      ... then start the Vite dev server
#   ./build.sh --build    ... then produce a production build in web/dist
#   ./build.sh --preview  ... then produce a production build and preview it

set -euo pipefail
cd "$(dirname "$0")"

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

# The web app supplies the shared tooling that example builds lean on (jco, from
# web/node_modules, via web/transpile.sh) and hosts their output, so make sure
# its deps are installed before dispatching to the per-example builds.
if [[ ! -d web/node_modules ]]; then
    printf 'web/node_modules is missing. Run "npm install"? [y/N] '
    read -r reply
    if [[ "$reply" == [Yy] || "$reply" == [Yy][Ee][Ss] ]]; then
        (cd web && npm install)
    else
        exit 1
    fi
fi

# Discover and run every example's build. `*/*/build.sh` = <language>/<example>;
# the web/ tree has no matching build.sh, so it is skipped naturally.
echo "======== BUILDING EXAMPLES ========"
shopt -s nullglob
for script in */*/build.sh; do
    echo "-------- $script --------"
    (cd "$(dirname "$script")" && ./build.sh)
done
shopt -u nullglob

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
