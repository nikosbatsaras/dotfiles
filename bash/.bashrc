#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PATH+=:"$HOME/bin"

PS1='[\u@\h \W]\$ '

EDITOR=nvim

RANGER_LOAD_DEFAULT_RC=FALSE

alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -I . -I .. -a'

alias vi='nvim -p'
alias vim='nvim -p'
alias music='ncmpcpp'
alias email='neomutt'

alias tls="tmux ls"
alias session="tmux new -s"
alias attach="tmux attach -t"

export PATH
export EDITOR
export RANGER_LOAD_DEFAULT_RC
