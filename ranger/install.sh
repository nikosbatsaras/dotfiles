eval "$(wget https://raw.githubusercontent.com/nickbatsaras/dotfiles/master/install.sh -O -)"

if [ ! -d ~/.dotfiles ]
then
	if [ "$(which git)" = "" ]
	then
		install git
	fi
	git clone https://github.com/nickbatsaras/dotfiles.git ~/.dotfiles
fi

install ranger

backup ~/.config/ranger

ranger --copy-config=all

rm ~/.config/ranger/rc.conf

ln -s ~/.dotfiles/ranger/rc.conf ~/.config/ranger/rc.conf
