eval "$(wget https://raw.githubusercontent.com/nikosbatsaras/dotfiles/master/install.sh -O -)"

backup ~/.gitconfig

ln -s ~/.dotfiles/git/.gitconfig ~/.gitconfig
