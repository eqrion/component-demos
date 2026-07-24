#!/bin/bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
EMSDK_DIR="$SCRIPT_DIR/_emsdk"

EMSCRIPTEN_VERSION="6.0.4"

# Don't let an already-installed (global) emsdk on this machine leak in.
unset EMSDK EMSDK_PYTHON

echo "emscripten: $EMSCRIPTEN_VERSION"
echo "install:    $EMSDK_DIR"

if [ -x "$EMSDK_DIR/upstream/emscripten/em++" ]; then
  echo
  echo "Already installed ($(EM_CONFIG="$EMSDK_DIR/.emscripten" "$EMSDK_DIR/upstream/emscripten/em++" --version | head -1))."
  echo "Delete $EMSDK_DIR to force a reinstall."
  exit 0
fi

# emsdk is the version manager; a shallow clone is enough. `emsdk install`
# fetches a self-contained toolchain (LLVM, binaryen, and its own node + python).
if [ ! -d "$EMSDK_DIR/.git" ]; then
  rm -rf "$EMSDK_DIR"
  echo
  echo "Cloning emsdk..."
  git clone --depth 1 https://github.com/emscripten-core/emsdk.git "$EMSDK_DIR"
fi

echo
echo "Installing + activating Emscripten $EMSCRIPTEN_VERSION (downloads ~1 GB)..."
"$EMSDK_DIR/emsdk" install "$EMSCRIPTEN_VERSION"
# --embedded writes a relocatable .emscripten into the emsdk dir itself (paths
# derived from CFGDIR at runtime) rather than to ~/.emscripten, so the build
# scripts can point EM_CONFIG straight at it.
"$EMSDK_DIR/emsdk" activate --embedded "$EMSCRIPTEN_VERSION"

if [ ! -f "$EMSDK_DIR/.emscripten" ]; then
  echo "Expected $EMSDK_DIR/.emscripten to be written by activate." >&2
  exit 1
fi

echo
echo "Done. $(EM_CONFIG="$EMSDK_DIR/.emscripten" "$EMSDK_DIR/upstream/emscripten/em++" --version | head -1)"
echo "Build scripts invoke $EMSDK_DIR/upstream/emscripten/em++ directly."
