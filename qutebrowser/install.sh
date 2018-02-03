eval "$(wget https://raw.githubusercontent.com/nickbatsaras/dotfiles/master/install.sh -O -)"

if [ ! -d ~/.dotfiles ]
then
	if [ "$(which git)" = "" ]
	then
		install git
	fi
	git clone https://github.com/nickbatsaras/dotfiles.git ~/.dotfiles
fi

install qutebrowser

backup ~/.config/qutebrowser

mkdir ~/.config/qutebrowser
mkdir ~/.config/qutebrowser/bookmarks

ln -s ~/.dotfiles/qutebrowser/config.py ~/.config/qutebrowser/config.py
