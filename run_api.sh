#!/bin/bash
export PATH="$HOME/.local/bin:$PATH"
set -a
source "$(dirname "$0")/.env"
set +a
SCRIPT_DIR="$(dirname "$0")"
# Use WSL-native venv if available (much faster startup), fallback to project venv
if [ -f "$HOME/hindsight-venv/bin/hindsight-api" ]; then
    exec "$HOME/hindsight-venv/bin/hindsight-api"
else
    exec "$SCRIPT_DIR/.venv/bin/hindsight-api"
fi
