if [ ! -d ~/.dotfiles ]
then
	git clone https://github.com/nickbatsaras/dotfiles.git ~/.dotfiles
fi

source ~/.dotfiles/install.sh

install i3

backup ~/.config/i3

mkdir ~/.config/i3

ln -s ~/.dotfiles/i3/config ~/.config/i3/config
