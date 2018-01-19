if [ ! -d ~/.dotfiles ]
then
	git clone https://github.com/nickbatsaras/dotfiles.git ~/.dotfiles
fi

source ~/.dotfiles/install.sh

backup ~/.bashrc
backup ~/.bash_profile

ln -s ~/.dotfiles/bash/.bashrc       ~/.bashrc
ln -s ~/.dotfiles/bash/.bash_profile ~/.bash_profile

source ~/.bashrc
