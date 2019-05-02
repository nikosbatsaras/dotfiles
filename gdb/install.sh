#!/usr/bin/env bash

eval "$(wget https://raw.githubusercontent.com/nikosbatsaras/dotfiles/master/install.sh -O -)"

install gdb

backup ~/.gdbinit

ln -s ~/.dotfiles/gdb/.gdbinit ~/.gdbinit
