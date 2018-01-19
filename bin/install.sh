if [ ! -d ~/.dotfiles ]
then
	git clone https://github.com/nickbatsaras/dotfiles.git ~/.dotfiles
fi

source ~/.dotfiles/install.sh

backup ~/bin

mkdir ~/bin

ln -s ~/.dotfiles/bin/* ~/bin/
