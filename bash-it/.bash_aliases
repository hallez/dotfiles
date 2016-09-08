#!/usr/bin/env bash

# git duet
alias duet="git duet --global"
alias solo="git solo --global"
alias dci="git duet-commit"

export EDITOR=vim

export MEMOBCDIR=/Volumes/dml/hrzucker/memoBC/

# Deal with vim editing crontab issues
# based on solution suggested at:
# http://drawohara.com/post/6344279/crontab-temp-file-must-be-edited-in-place
alias crontab="VIM_CRONTAB=true crontab"
