#!/bin/bash

dist=`source /etc/os-release; echo $ID`

install() {
	if [ "$(which $1)" = "" ]
	then
		case $dist in
			arch) sudo pacman -S "$1" --noconfirm;;
			ubuntu) sudo apt-get -y install "$1";;
		esac
	fi
}

backup() {
	timestamp=`date | sed s/\ /-/g`
	if [ -f "$1" ] || [ -d "$1" ]
	then
		echo "Backing-up: $1 -> $1_BACKUP_$timestamp"
		mv "$1" "$1_BACKUP_$timestamp"
	fi
}


install git

if [ -d ~/.dotfiles ]
then
	cd ~/.dotfiles

	remoteurl=`git config --get remote.origin.url`

	if [ ! "$remoteurl" = "https://github.com/nickbatsaras/dotfiles.git" ]
	then
		backup ~/.dotfiles
		git clone https://github.com/nickbatsaras/dotfiles.git ~/.dotfiles
	fi
else
		git clone https://github.com/nickbatsaras/dotfiles.git ~/.dotfiles
fi
