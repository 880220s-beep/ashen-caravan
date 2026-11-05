#!/usr/bin/env bash
# Byte-identical copy of the game into Capacitor webDir. Never edits game files.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
WWW="$ROOT/www"
SRC_HTML="$ROOT/test_v137_m2.html"
SRC_ASSETS="$ROOT/assets"

if [[ ! -f "$SRC_HTML" ]]; then
  echo "Missing $SRC_HTML" >&2
  exit 1
fi
if [[ ! -d "$SRC_ASSETS" ]]; then
  echo "Missing $SRC_ASSETS" >&2
  exit 1
fi

rm -rf "$WWW"
mkdir -p "$WWW"
cp -a "$SRC_HTML" "$WWW/index.html"
cp -a "$SRC_ASSETS" "$WWW/assets"

# Sanity: sizes must match
html_src=$(wc -c < "$SRC_HTML")
html_dst=$(wc -c < "$WWW/index.html")
if [[ "$html_src" != "$html_dst" ]]; then
  echo "HTML copy size mismatch: $html_src vs $html_dst" >&2
  exit 1
fi
echo "Copied game -> www/ (index.html ${html_src} bytes + assets/)"
