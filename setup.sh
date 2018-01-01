#!/bin/bash

##
#
# @auth  Nick Batsaras (nickbatsaras@gmail.com)
# @date  30/12/2017
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
#                            Install auxiliary apps                          *
#*****************************************************************************

install firefox
install dmenu
install keepass
install texlive-most
install pulseaudio
install pamixer
install imagemagick
install openssh
install gdb


#*****************************************************************************
#                  Install applications used by this setup                   *
#*****************************************************************************

# Install applications
install git
install vim
install rxvt-unicode
install tmux
install mpv
install mpd
install mpc
install ncmpcpp
install qutebrowser
install ranger
install zathura zathura-pdf-poppler
install youtube-dl
install sxiv
install neomutt
install rtorrent

# Download dotfiles from github
backup ~/.dotfiles

git clone https://github.com/nickbatsaras/dotfiles.git ~/.dotfiles

# Download Vundle, a plugin manager for Vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.dotfiles/bundle/Vundle.vim

#*****************************************************************************



#*****************************************************************************
#                                   Scripts                                  *
#*****************************************************************************
backup ~/bin

mkdir ~/bin

ln -s ~/.dotfiles/bin/*                 ~/bin/
#*****************************************************************************



#*****************************************************************************
#                     Bash, Vim, Tmux and RXVT configs                       *
#*****************************************************************************
backup ~/.bashrc
backup ~/.bash_profile
backup ~/.vimrc
backup ~/.tmux.conf
backup ~/.Xresources
backup ~/.Xdefaults

ln -s ~/.dotfiles/bash/.bashrc          ~/.bashrc
ln -s ~/.dotfiles/bash/.bash_profile    ~/.bash_profile
ln -s ~/.dotfiles/vim/.vimrc            ~/.vimrc
ln -s ~/.dotfiles/tmux/.tmux.conf       ~/.tmux.conf
ln -s ~/.dotfiles/urxvt/.Xresources     ~/.Xdefaults

vim +PluginInstall +qall
#*****************************************************************************



#*****************************************************************************
#                                    Sway                                    *
#*****************************************************************************
backup ~/.config/sway

mkdir ~/.config/sway

ln -s ~/.dotfiles/sway/config           ~/.config/sway/config
#*****************************************************************************



#*****************************************************************************
#                       Music: MPD and NCMPCPP configs                       *
#*****************************************************************************
backup ~/.ncmpcpp
backup ~/.config/mpd

mkdir ~/.ncmpcpp
mkdir ~/.config/mpd
mkdir ~/.config/mpd/playlists

touch ~/.config/mpd/log
touch ~/.config/mpd/database

ln -s ~/.dotfiles/mpd/mpd.conf          ~/.config/mpd/mpd.conf
ln -s ~/.dotfiles/ncmpcpp/bindings      ~/.ncmpcpp/bindings
#*****************************************************************************



#*****************************************************************************
#                                    Fonts                                   *
#*****************************************************************************
install ttf-ubuntu-font-family
#*****************************************************************************



#*****************************************************************************
#                                Ranger config                               *
#*****************************************************************************
backup ~/.config/ranger

ranger --copy-config=all

rm ~/.config/ranger/rc.conf

ln -s ~/.dotfiles/ranger/rc.conf        ~/.config/ranger/rc.conf
#*****************************************************************************



#*****************************************************************************
#                             Qutebrowser config                             *
#*****************************************************************************
backup ~/.config/qutebrowser

mkdir ~/.config/qutebrowser
mkdir ~/.config/qutebrowser/bookmarks

ln -s ~/.dotfiles/qutebrowser/config.py ~/.config/qutebrowser/config.py
#*****************************************************************************



#*****************************************************************************
#                                 Mutt config                                *
#*****************************************************************************
backup ~/.mutt
backup ~/.muttrc

mkdir ~/.mutt
mkdir ~/.mutt/cache
mkdir ~/.mutt/cache/bodies
mkdir ~/.mutt/cache/headers

ln -s ~/.dotfiles/mutt/.muttrc                         ~/.muttrc
ln -s ~/.dotfiles/mutt/account.gr.uoc.csd.batsaras     ~/.mutt/account.gr.uoc.csd.batsaras
ln -s ~/.dotfiles/mutt/account.com.gmail.batsarasnikos ~/.mutt/account.com.gmail.batsarasnikos
#*****************************************************************************



#*****************************************************************************
#                                  Git config                                *
#*****************************************************************************
backup ~/.gitconfig

ln -s ~/.dotfiles/git/.gitconfig        ~/
#*****************************************************************************
