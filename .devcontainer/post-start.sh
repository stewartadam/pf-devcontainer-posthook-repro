#!/bin/env bash
set -eux

# Check if already initialized
INITIALIZED_MARKER=~/.devcontainer-initialized
[ -f "$INITIALIZED_MARKER" ] && exit 0

# Don't activate 'base' environment
# VS Code activates its selected conda environment automatically
conda config --set auto_activate_base false

# Ensure pf is installed
conda run -n "$CONDA_ENV_NAME" --live-stream pf --help

# Mark this container as initialized
touch "$INITIALIZED_MARKER"
