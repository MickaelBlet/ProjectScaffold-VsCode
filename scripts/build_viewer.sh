#!/usr/bin/env bash
# Build the pages of the extension: the web build of the viewer submodule (viewer/dist-web/index.html).
set -euo pipefail
cd "$(dirname "$0")/.."

[ -f viewer/package.json ] || git submodule update --init viewer
cd viewer
# Install when missing or older than the lockfile (dependencies added since the last install).
if [ ! -f node_modules/.package-lock.json ] || [ package-lock.json -nt node_modules/.package-lock.json ]; then
  npm ci
fi
npm run build
