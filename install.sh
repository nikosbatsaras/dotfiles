#!/usr/bin/env bash

install() {
	if [ "$(which $1)" = "" ]
	then
		sudo pacman -S "$1" --noconfirm
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

	if [ ! "$remoteurl" = "https://github.com/nikosbatsaras/dotfiles.git" ]
	then
		cd ..
		backup ~/.dotfiles
		git clone https://github.com/nikosbatsaras/dotfiles.git ~/.dotfiles
	fi
else
		git clone https://github.com/nikosbatsaras/dotfiles.git ~/.dotfiles
fi
