#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PATH+=:"$HOME/bin"

PS1='[\u@\h \W]\$ '

EDITOR=vim

alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -I . -I .. -al'

alias open='xdg-open'
alias music='ncmpcpp'
alias email='neomutt'
alias files='ranger'
alias reddit='rtv --enable-media'

alias vi='vim'

alias tls='tmux ls'
alias session='tmux new -s'
alias attach='tmux attach -t'

export PATH
export EDITOR

# enable programmable completion features
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

function setbg() {
	rm "/home/$USER/.dotfiles/wallpapers/wallpaper"/*
	cp "$1" "/home/$USER/.dotfiles/wallpapers/wallpaper/"

	feh --bg-fill "$1"
}
