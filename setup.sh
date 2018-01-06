#!/bin/bash

##
#
# @auth  Nick Batsaras (nickbatsaras@gmail.com)
# @date  06/01/2017
# @desc  Script to install the entire setup on a new Arch machine
#
#
#        All existing user configs, will be backed-up.
#
##



#*****************************************************************************
#            Function to install packages needed for the setup               *
#*****************************************************************************
install() {
    sudo pacman -S "$1"
}
#*****************************************************************************



#*****************************************************************************
#       Function to backup user configs before installing the new ones       *
#*****************************************************************************
backup() {
    if [ -f "$1" ] || [ -d "$1" ]
    then
        echo "Backing-up: $1 -> $1_bak"
        mv "$1" "$1_bak"
    fi
}
#*****************************************************************************



#*****************************************************************************
#                                Preparation                                 *
#*****************************************************************************
# TODO: Create all default folders needed (e.g. Music, Pictures, etc)
# TODO: Update pacman before starting installation



#*****************************************************************************
#                  Install applications with no config files                 *
#*****************************************************************************

install sddm
install firefox
install dmenu
install keepass
install texlive-most
install pulseaudio
install pamixer
install imagemagick
install openssh
install gdb
install mpv
install mpc
install zathura zathura-pdf-poppler
install youtube-dl
install sxiv
install rtorrent

#*****************************************************************************



#*****************************************************************************
#                     Install applications with their configs                *
#*****************************************************************************

# We need it to download configs
install git

# Download dotfiles from github
backup ~/.dotfiles

git clone https://github.com/nickbatsaras/dotfiles.git ~/.dotfiles

# Download Vundle, a plugin manager for Vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.dotfiles/bundle/Vundle.vim

# Install some fonts
install ttf-ubuntu-font-family



export -f install
export -f backup

~/.dotfiles/bin/install.sh
~/.dotfiles/git/install.sh
~/.dotfiles/sway/install.sh
~/.dotfiles/bash/install.sh
~/.dotfiles/vim/install.sh
~/.dotfiles/urxvt/install.sh
~/.dotfiles/tmux/install.sh
~/.dotfiles/ranger/install.sh
~/.dotfiles/mpd/install.sh
~/.dotfiles/ncmpcpp/install.sh
~/.dotfiles/qutebrowser/install.sh
~/.dotfiles/mutt/install.sh


# Install vim plugins
vim +PluginInstall +qall

#*****************************************************************************
