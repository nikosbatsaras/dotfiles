eval "$(wget https://raw.githubusercontent.com/nickbatsaras/dotfiles/master/install.sh -O -)"

if [ ! -d ~/.dotfiles ]
then
	if [ "$(which git)" = "" ]
	then
		install git
	fi
	git clone https://github.com/nickbatsaras/dotfiles.git ~/.dotfiles
fi

backup ~/.bashrc
backup ~/.bash_profile

ln -s ~/.dotfiles/bash/.bashrc       ~/.bashrc
ln -s ~/.dotfiles/bash/.bash_profile ~/.bash_profile

source ~/.bashrc
