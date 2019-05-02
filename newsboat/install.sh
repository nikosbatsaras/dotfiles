#!/usr/bin/env bash

eval "$(wget https://raw.githubusercontent.com/nikosbatsaras/dotfiles/master/install.sh -O -)"

install mpv
install feh
install youtube-dl
install newsboat

backup ~/.newsboat

mkdir ~/.newsboat

ln -s ~/.dotfiles/newsboat/config ~/.newsboat/config
