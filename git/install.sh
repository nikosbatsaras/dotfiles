eval "$(wget https://raw.githubusercontent.com/nickbatsaras/dotfiles/master/install.sh -O -)"

backup ~/.gitconfig

ln -s ~/.dotfiles/git/.gitconfig ~/.gitconfig
