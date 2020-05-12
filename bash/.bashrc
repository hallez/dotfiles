#!/usr/bin/env bash

reset_color="\[\e[39m\]"
green="\[\e[0;32m\]"
bold_cyan="\[\e[36;1m\]"

function clock_prompt {
  echo -e "${bold_cyan}$(date +"%Y-%m-%d %H:%M:%S")"
}

# Ensure we can print special characters like →
export LC_ALL=en_US.UTF-8

export EDITOR=vim

homepath="$HOME/bin"

if [[ ${PATH} != *"${homepath}"* ]]; then
  export PATH="${homepath}":$PATH
fi

export GOPATH="${HOME}/go"
export PATH=${GOPATH}/bin:${PATH}

gorootbin="/usr/local/go/bin"

if [[ ${PATH} != *"${gorootbin}"* ]]; then
  export PATH=$PATH:"${gorootbin}"
fi

if [[ -f /usr/local/bin/direnv  || -f /usr/bin/direnv ]]; then
  eval "$(direnv hook bash)"
fi

alias duet="git duet"
alias solo="git solo"
alias dci="git duet-commit"
alias gst="git status"
export GIT_DUET_ROTATE_AUTHOR=1

alias ll="ls -al"

# Deal with vim editing crontab issues
# based on solution suggested at:
# http://drawohara.com/post/6344279/crontab-temp-file-must-be-edited-in-place
alias crontab="VIM_CRONTAB=true crontab"

FSLDIR="/usr/local/fsl"
export FSLDIR

if [[ -f "${FSLDIR}/etc/fslconf/fsl.sh" ]]; then
  source "${FSLDIR}/etc/fslconf/fsl.sh"
fi

PATH="${FSLDIR}/bin:${PATH}"
export PATH

PATH="/Applications/workbench/bin_macosx64:$PATH"
export PATH

CURRENT_VERSION="R2014b"

alias matlab="/Applications/MATLAB_${CURRENT_VERSION}.app/bin/matlab -nodesktop"

# From: http://stackoverflow.com/questions/9457233/unlimited-bash-history/19533853#19533853

# Eternal bash history.
# ---------------------
# Undocumented feature which sets the size to "unlimited".
# http://stackoverflow.com/questions/9457233/unlimited-bash-history
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
# Change the file location because certain bash sessions truncate .bash_history file upon close.
# http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login
export HISTFILE=~/.bash_eternal_history
# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

alias rstudio='open -a Rstudio'

# increase the default memory
# based on: https://stackoverflow.com/questions/51295402/r-on-macos-error-vector-memory-exhausted-limit-reached
echo "R_MAX_VSIZE=100Gb" > $HOME/.Renviron

PS1="\n$(clock_prompt) ${green}\w →${reset_color} "
export PS1

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/Caskroom/miniconda/base/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
