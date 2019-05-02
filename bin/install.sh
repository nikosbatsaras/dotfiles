#!/usr/bin/env bash

eval "$(wget https://raw.githubusercontent.com/nikosbatsaras/dotfiles/master/install.sh -O -)"

backup ~/bin

mkdir ~/bin

ln -s ~/.dotfiles/bin/*.sh ~/bin/

rm ~/bin/install.sh
