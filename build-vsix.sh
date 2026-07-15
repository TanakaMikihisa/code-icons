#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

NAME="$(node -p "require('./package.json').name")"
VERSION="$(node -p "require('./package.json').version")"
VSIX_FILE="${NAME}-${VERSION}.vsix"

ORIGIN_URL="$(git config --get remote.origin.url 2>/dev/null || true)"
BASE_RAW=""
if [[ -n "$ORIGIN_URL" ]]; then
  REPO_PATH=""
  if [[ "$ORIGIN_URL" == https://github.com/* ]]; then
    REPO_PATH="${ORIGIN_URL#https://github.com/}"
  elif [[ "$ORIGIN_URL" == http://github.com/* ]]; then
    REPO_PATH="${ORIGIN_URL#http://github.com/}"
  elif [[ "$ORIGIN_URL" == git@github.com:* ]]; then
    REPO_PATH="${ORIGIN_URL#git@github.com:}"
  fi

  REPO_PATH="${REPO_PATH%.git}"
  OWNER="${REPO_PATH%%/*}"
  REPO="${REPO_PATH#*/}"
  if [[ -n "$OWNER" && -n "$REPO" && "$OWNER" != "$REPO_PATH" ]]; then
    BASE_RAW="https://raw.githubusercontent.com/${OWNER}/${REPO}/main"
  fi
fi

echo "Packaging ${VSIX_FILE}..."

if [[ -n "$BASE_RAW" ]]; then
  npx --yes @vscode/vsce package \
    --out "$VSIX_FILE" \
    --allow-missing-repository \
    --baseContentUrl "$BASE_RAW" \
    --baseImagesUrl "$BASE_RAW" \
    "$@"
else
  npx --yes @vscode/vsce package \
    --out "$VSIX_FILE" \
    --allow-missing-repository \
    "$@"
fi

echo "Done: ${VSIX_FILE}"
