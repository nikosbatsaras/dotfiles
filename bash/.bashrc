#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PATH+=:"$HOME/bin"

PS1='[\u@\h \W]\$ '

EDITOR=vim

RANGER_LOAD_DEFAULT_RC=FALSE

alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -I . -I .. -a'

alias music='ncmpcpp'
alias email='neomutt'

alias tls="tmux ls"
alias session="tmux new -s"
alias attach="tmux attach -t"

export PATH
export EDITOR
export RANGER_LOAD_DEFAULT_RC

# enable programmable completion features
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
