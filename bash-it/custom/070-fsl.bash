#!/usr/local/env bash

set -eu

FSLDIR="/usr/local/fsl"
export FSLDIR

source "${FSLDIR}/etc/fslconf/fsl.sh"

PATH="${FSLDIR}/bin:${PATH}"
export PATH

set +eu
