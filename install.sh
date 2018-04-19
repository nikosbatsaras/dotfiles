#!/bin/bash

dist=`source /etc/os-release; echo $ID`

install() {
	if [ "$(which $1)" = "" ]
	then
		case $dist in
			arch) sudo pacman -S "$1";;
			ubuntu) sudo apt-get install "$1";;
		esac
	fi
}

backup() {
    if [ -f "$1" ] || [ -d "$1" ]
    then
        echo "Backing-up: $1 -> $1_bak"
        mv "$1" "$1_bak"
    fi
}

install git

if [ ! -d ~/.dotfiles ]
then
	git clone https://github.com/nickbatsaras/dotfiles.git ~/.dotfiles
fi
