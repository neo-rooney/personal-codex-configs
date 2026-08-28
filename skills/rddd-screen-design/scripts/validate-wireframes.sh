#!/usr/bin/env bash

set -euo pipefail

if [ "$#" -eq 0 ]; then
  echo "Usage: $0 <wireframe.svg> [...]" >&2
  exit 2
fi

preview_dir=$(mktemp -d)

validate_xml() {
  local file=$1

  if command -v xmllint >/dev/null 2>&1; then
    xmllint --noout "$file"
  else
    python3 -c 'import sys, xml.etree.ElementTree as ET; ET.parse(sys.argv[1])' "$file"
  fi
}

render_preview() {
  local file=$1

  if command -v qlmanage >/dev/null 2>&1; then
    qlmanage -t -s 1600 -o "$preview_dir" "$file" >/dev/null 2>&1
  elif command -v rsvg-convert >/dev/null 2>&1; then
    rsvg-convert "$file" -o "$preview_dir/$(basename "$file").png"
  else
    echo "Warning: no supported SVG preview renderer found; inspect $file in a browser." >&2
    return
  fi
}

for file in "$@"; do
  if [ ! -f "$file" ]; then
    echo "File not found: $file" >&2
    exit 1
  fi

  validate_xml "$file"
  render_preview "$file"
  echo "Validated: $file"
done

if find "$preview_dir" -maxdepth 1 -type f | grep -q .; then
  echo "Preview directory: $preview_dir"
fi
