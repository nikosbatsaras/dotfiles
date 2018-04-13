eval "$(wget https://raw.githubusercontent.com/nickbatsaras/dotfiles/master/install.sh -O -)"

if [ ! -d ~/.dotfiles ]
then
	if [ "$(which git)" = "" ]
	then
		install git
	fi
	git clone https://github.com/nickbatsaras/dotfiles.git ~/.dotfiles
fi

install rxvt-unicode

backup ~/.Xresources

ln -s ~/.dotfiles/urxvt/.Xresources ~/.Xresources

xrdb ~/.Xresources
