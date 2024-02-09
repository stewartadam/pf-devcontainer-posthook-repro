#!/bin/env bash
set -eux

# Setup conda environment
if [ -f /workspace/environment.yml ]; then
  umask 0002
  /opt/conda/bin/conda env create -n "$CONDA_ENV_NAME" -f /workspace/environment.yml
fi

# Initialize conda helpers in user's ~/.bashrc
conda init
