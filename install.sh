#!/bin/bash

dist=`source /etc/os-release; echo $ID`

if [ "$dist" = ubuntu ]
then
	function install {
		if [ "$(which $1)" = "" ]
		then
			sudo apt install "$1"
		fi
	}
elif [ "$dist" = arch ]
then
	function install {
		if [ "$(which $1)" = "" ]
		then
			sudo pacman -S "$1"
		fi
	}
fi

backup() {
    if [ -f "$1" ] || [ -d "$1" ]
    then
        echo "Backing-up: $1 -> $1_bak"
        mv "$1" "$1_bak"
    fi
}
