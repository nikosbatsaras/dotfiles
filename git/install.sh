if [ ! -d ~/.dotfiles ]
then
	git clone https://github.com/nickbatsaras/dotfiles.git ~/.dotfiles
fi

source ~/.dotfiles/install.sh

backup ~/.gitconfig

ln -s ~/.dotfiles/git/.gitconfig ~/.gitconfig
