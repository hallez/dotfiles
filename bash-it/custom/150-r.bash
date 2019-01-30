#!/usr/local/env bash

set -eu

alias rstudio='open -a Rstudio'

# increase the default memory
# based on: https://stackoverflow.com/questions/51295402/r-on-macos-error-vector-memory-exhausted-limit-reached
echo "R_MAX_VSIZE=100Gb" > $HOME/.Renviron

set +eu
