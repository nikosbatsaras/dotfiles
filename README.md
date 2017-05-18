# General
This a simple configuration for vim + tmux

# Installation
First, clone the repo to your home directory:
```bash
git clone https://github.com/nickbatsaras/dotfiles.git ~/.dotfiles
```
Then, we need to install vundle (a plugin manager for vim)
```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.dotfiles/bundle/Vundle.vim
```
Finally, link to the cloned configs:
```bash
ln -s ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
```
