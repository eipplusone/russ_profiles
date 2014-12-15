# bash-completeion
if [ -f `brew --prefix`/etc/bash_completion ]; then
. `brew --prefix`/etc/bash_completion
fi

alias spandev='ssh ukiseru@pandev01.pearsondev.com'
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
alias ctags="`brew --prefix`/bin/ctags"
alias ll="ls -al"
alias info="info --vi-keys"

# Increase History size
HISTSIZE=5000000;

set -o vi

export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history

# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
