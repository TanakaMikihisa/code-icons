#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

git config core.hooksPath .githooks
chmod +x .githooks/pre-commit pad-assets.sh install-git-hooks.sh

echo "Installed git hooks from .githooks/"
echo "  core.hooksPath = .githooks"
