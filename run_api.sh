#!/bin/bash
export PATH="$HOME/.local/bin:$PATH"
set -a
source "$(dirname "$0")/.env"
set +a
SCRIPT_DIR="$(dirname "$0")"
exec "$SCRIPT_DIR/.venv/bin/hindsight-api"
