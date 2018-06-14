#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH+=:"$HOME/bin"
export PS1='[\u@\h \W]\$ '
export EDITOR='vim'

alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -I . -I .. -al'

alias open='xdg-open'
alias music='ncmpcpp'
alias email='neomutt'
alias files='ranger'
alias news='newsboat'
alias irc='irssi'
alias reddit='rtv --enable-media'

alias vi='vim'
alias clr='clear'

alias tls='tmux ls'
alias session='tmux new -s'
alias attach='tmux attach -t'

alias cvim='vim ~/.vimrc'
alias ctmux='vim ~/.tmux.conf'
alias cbash='vim ~/.bashrc'
alias ci3='vim ~/.config/i3/config'
alias cx='vim ~/.Xresources'
alias cnews='vim ~/.newsboat/config'
alias crtv='vim ~/.config/rtv/rtv.cfg'
alias cmutt='vim ~/.muttrc'

source /usr/share/bash-completion/bash_completion

function setbg() {
	rm "/home/$USER/.dotfiles/wallpapers/wallpaper"/*
	cp "$1" "/home/$USER/.dotfiles/wallpapers/wallpaper/"

	feh --bg-fill "$1"
}
