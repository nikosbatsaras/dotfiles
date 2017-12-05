#!/bin/bash

# TODO: Backup first !
exit 1

ln -s ~/.dotfiles/zsh/.zshrc            ~/.zshrc
ln -s ~/.dotfiles/vim/.vimrc            ~/.vimrc
ln -s ~/.dotfiles/tmux/.tmux.conf       ~/.tmux.conf
ln -s ~/.dotfiles/urxvt/.Xresources     ~/.Xresources

xrdb ~/.Xresources
vim +PluginInstall +qall


mkdir ~/.config/i3
ln -s ~/.dotfiles/i3/config             ~/.config/i3/config
ln -s ~/.dotfiles/i3/lock.sh            ~/.config/i3/lock.sh


mkdir ~/.ncmpcpp
mkdir ~/.config/mpd
touch ~/.config/mpd/database
touch ~/.config/mpd/log
ln -s ~/.dotfiles/mpd/mpd.conf          ~/.config/mpd/mpd.conf
ln -s ~/.dotfiles/ncmpcpp/bindings      ~/.ncmpcpp/bindings


cp -r ~/.dotfiles/fonts ~/.fonts


mkdir ~/.config/polybar
ln -s ~/.dotfiles/i3/polybar/config     ~/.config/polybar/config
ln -s ~/.dotfiles/i3/polybar/launch.sh  ~/.config/polybar/launch.sh


mkdir ~/.config/qutebrowser
ln -s ~/.dotfiles/qutebrowser/config.py ~/.config/qutebrowser/config.py
