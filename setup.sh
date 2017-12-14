#!/bin/bash

##
#
# @auth  Nick Batsaras (nickbatsaras@gmail.com)
# @date  05/12/2017
# @desc  Script to install the entire setup on a new Debian machine
#
#
#        All existing user configs, will be backed-up.
#
##



#*****************************************************************************
#            Function to install packages needed for the setup               *
#*****************************************************************************
install() {
    sudo apt-get install "$1"
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
#                  Install applications used by this setup                   *
#*****************************************************************************
# Install i3 window manager
install i3

# Install polybar dependencies
install cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev 
install libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev libxcb-util0-dev
install libxcb-xkb-dev pkg-config python-xcbgen xcb-proto i3-wm libasound2-dev
install libmpdclient-dev libiw-dev libcurl4-openssl-dev

# Install polybar
backup ~/polybar

git clone --recursive https://github.com/jaagr/polybar ~/polybar
mkdir ~/polybar/build
cd ~/polybar/build
cmake ..
sudo make install

# Install Qutebrowser
backup ~/qutebrowser

install tox
git clone https://github.com/qutebrowser/qutebrowser.git ~/qutebrowser
cd ~/qutebrowser
tox -e mkvenv-pypi

# Install NeoMutt dependencies
install libssl-dev libsasl2-dev libncurses-dev libtokyocabinet-dev

# Install NeoMutt
backup ~/neomutt

git clone https://github.com/neomutt/neomutt.git ~/neomutt
cd ~/neomutt
./configure --ssl --sasl --tokyocabinet
make
sudo make install

# Install applications
install zsh
install vim
install rxvt-unicode
install rxvt-unicode-256color
install tmux
install mpd
install ncmpcpp
install mpc
install scrot
install feh
install ranger
install zathura
install youtube-dl
install sxiv

# Download dotfiles from github
backup ~/.dotfiles

git clone https://github.com/nickbatsaras/dotfiles.git ~/.dotfiles

# Download Vundle, a plugin manager for Vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.dotfiles/bundle/Vundle.vim

# Download and install oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Set zsh as default shell
chsh -s $(which zsh)
#*****************************************************************************



#*****************************************************************************
#                     Zsh, Vim, Tmux and RXVT configs                        *
#*****************************************************************************
backup ~/.zshrc
backup ~/.vimrc
backup ~/.tmux.conf
backup ~/.Xresources

ln -s ~/.dotfiles/zsh/.zshrc            ~/.zshrc
ln -s ~/.dotfiles/vim/.vimrc            ~/.vimrc
ln -s ~/.dotfiles/tmux/.tmux.conf       ~/.tmux.conf
ln -s ~/.dotfiles/urxvt/.Xresources     ~/.Xresources

xrdb ~/.Xresources
vim +PluginInstall +qall
#*****************************************************************************



#*****************************************************************************
#                                 i3 config                                  *
#*****************************************************************************
backup ~/.config/i3

mkdir ~/.config/i3

ln -s ~/.dotfiles/i3/config             ~/.config/i3/config
ln -s ~/.dotfiles/i3/lock.sh            ~/.config/i3/lock.sh
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
backup ~/.fonts

cp -r ~/.dotfiles/fonts                 ~/.fonts
#*****************************************************************************



#*****************************************************************************
#                               Polybar config                               *
#*****************************************************************************
backup ~/.config/polybar

mkdir ~/.config/polybar

ln -s ~/.dotfiles/i3/polybar/config     ~/.config/polybar/config
ln -s ~/.dotfiles/i3/polybar/launch.sh  ~/.config/polybar/launch.sh
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
#                                Ranger config                               *
#*****************************************************************************
backup ~/.config/ranger

ranger --copy-config=all

rm ~/.config/ranger/rc.conf

ln -s ~/.dotfiles/ranger/rc.conf        ~/.config/ranger/rc.conf
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
