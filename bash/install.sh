#!/usr/bin/env bash

eval "$(wget https://raw.githubusercontent.com/nikosbatsaras/dotfiles/master/install.sh -O -)"

backup ~/.bashrc
backup ~/.bash_profile

ln -s ~/.dotfiles/bash/.bashrc       ~/.bashrc
ln -s ~/.dotfiles/bash/.bash_profile ~/.bash_profile

source ~/.bashrc
