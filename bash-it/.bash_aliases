#!/usr/bin/env bash

# git duet
alias duet="git duet --global"
alias solo="git solo --global"

export EDITOR=vim

export MEMOBCDIR=/Volumes/dml/hrzucker/memoBC/

export ASHS_ROOT=/dml/hrzucker/ashs/

# Deal with vim editing crontab issues
# based on solution suggested at:
# http://drawohara.com/post/6344279/crontab-temp-file-must-be-edited-in-place
alias crontab="VIM_CRONTAB=true crontab"
