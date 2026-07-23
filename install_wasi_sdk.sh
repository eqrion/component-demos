#!/bin/bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SDK_DIR="$SCRIPT_DIR/_wasi-sdk"

WASI_SDK_TAG="wasi-sdk-33"        # GitHub release tag
WASI_SDK_ASSET_VERSION="33.0"     # versioned asset prefix

# --- Host detection ---------------------------------------------------------

case "$(uname -s)" in
  Darwin) OS="macos" ;;
  Linux)  OS="linux" ;;
  *) echo "Unsupported OS: $(uname -s)" >&2; exit 1 ;;
esac

case "$(uname -m)" in
  arm64|aarch64) ARCH="arm64" ;;
  x86_64|amd64)  ARCH="x86_64" ;;
  *) echo "Unsupported architecture: $(uname -m)" >&2; exit 1 ;;
esac

ASSET="wasi-sdk-${WASI_SDK_ASSET_VERSION}-${ARCH}-${OS}.tar.gz"
URL="https://github.com/WebAssembly/wasi-sdk/releases/download/${WASI_SDK_TAG}/${ASSET}"

echo "wasi-sdk:  $WASI_SDK_TAG ($ARCH-$OS)"
echo "URL:       $URL"
echo "Install:   $SDK_DIR"

if [ -x "$SDK_DIR/bin/clang" ]; then
  echo
  echo "Already installed ($("$SDK_DIR/bin/clang" --version | head -1)). Skipping."
  echo "Delete $SDK_DIR to force a reinstall."
  exit 0
fi

TMP=$(mktemp -d)
trap 'rm -rf "$TMP"' EXIT

echo
echo "Downloading..."
curl -fL --progress-bar -o "$TMP/wasi-sdk.tar.gz" "$URL"

echo "Extracting to $SDK_DIR..."
rm -rf "$SDK_DIR"
mkdir -p "$SDK_DIR"
tar -xzf "$TMP/wasi-sdk.tar.gz" -C "$SDK_DIR" --strip-components=1

echo
echo "Done. $("$SDK_DIR/bin/clang" --version | head -1)"
echo "Build scripts invoke $SDK_DIR/bin/clang directly."
