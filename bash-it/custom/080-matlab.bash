#!/usr/local/env bash

set -eu

CURRENT_VERSION="R2017a"
MATLAB_PATH="/Applications/MATLAB_${CURRENT_VERSION}.app/bin/matlab"

if [[ -f "/Applications/MATLAB_${CURRENT_VERSION}.app/bin/matlab" ]]; then
  source "/Applications/MATLAB_${CURRENT_VERSION}.app/bin/matlab"
fi

PATH="${MATLAB_PATH}/bin:${PATH}"
export PATH

set +eu
