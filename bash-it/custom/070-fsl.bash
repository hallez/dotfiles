#!/usr/local/env bash

set -eu

FSLDIR="/usr/local/fsl"
export FSLDIR

if [[ -f "${FSLDIR}/etc/fslconf.sh" ]]; then
  source "${FSLDIR}/etc/fslconf/fsl.sh"
fi

PATH="${FSLDIR}/bin:${PATH}"
export PATH

set +eu
