if [ ! -d ~/.dotfiles ]
then
	git clone https://github.com/nickbatsaras/dotfiles.git ~/.dotfiles
fi

source ~/.dotfiles/install.sh

install qutebrowser

backup ~/.config/qutebrowser

mkdir ~/.config/qutebrowser
mkdir ~/.config/qutebrowser/bookmarks

ln -s ~/.dotfiles/qutebrowser/config.py ~/.config/qutebrowser/config.py
