#!/usr/local/env bash

set -eu

# Deal with vim editing crontab issues
# based on solution suggested at:
# http://drawohara.com/post/6344279/crontab-temp-file-must-be-edited-in-place
alias crontab="VIM_CRONTAB=true crontab"

set +eu
