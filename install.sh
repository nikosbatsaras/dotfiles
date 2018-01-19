#!/bin/bash

dist=`lsb_release -is`

if [ "$dist" = Ubuntu ]
then
	function install {
		sudo apt install "$1"
	}
elif [ "$dist" = Arch ]
then
	function install {
		sudo pacman -S "$1"
	}
fi

backup() {
    if [ -f "$1" ] || [ -d "$1" ]
    then
        echo "Backing-up: $1 -> $1_bak"
        mv "$1" "$1_bak"
    fi
}
