alias ll="ls -al"
alias info="info --vi-keys"

# Increase History size
HISTSIZE=5000000;

set -o vi

export HISTCONTROL=ignoreboth  # no duplicate entries
export HISTIGNORE='ls:bg:fg:history'
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
export HISTTIMEFORMAT='%F %T '
shopt -s histappend
shopt -s cmdhist
export PROMPT_COMMAND='history -a'

# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
