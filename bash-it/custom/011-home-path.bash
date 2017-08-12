#!/usr/bin/env bash

set -eu

homepath="$HOME/bin"

if [[ ${PATH} != *"${homepath}"* ]]; then
  export PATH="${homepath}":$PATH
fi

set +eu
