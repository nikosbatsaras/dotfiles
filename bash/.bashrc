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

alias vi='vim -p'
alias vim='vim -p'
alias music='ncmpcpp'
alias visualizer='ncmpcpp -s visualizer'
alias email='neomutt'

alias vrc='vim ~/.dotfiles/vim/.vimrc'
alias brc='vim ~/.dotfiles/bash/.bashrc'
alias tconf='vim ~/.dotfiles/tmux/.tmux.conf'

alias sbrc='source ~/.dotfiles/bash/.bashrc'
alias stconf='source ~/.dotfiles/tmux/.tmux.conf'

alias tls="tmux ls"
alias session="tmux new -s"
alias attach="tmux attach -t"

alias pip=pip3
alias python=python3

export PATH
export EDITOR
export RANGER_LOAD_DEFAULT_RC
