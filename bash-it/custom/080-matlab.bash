#!/usr/local/env bash

set -eu

CURRENT_VERSION="R2017a"
MATLAB_PATH="/Applications/MATLAB_${CURRENT_VERSION}.app/bin/matlab"
export CURRENT_VERSION
export MATLAB_PATH

if [[ -f "${MATLAB_PATH}" ]]; then
  source "${MATLAB_PATH}"
fi

PATH="${MATLAB_PATH}/bin:${PATH}"
export PATH

set +eu
