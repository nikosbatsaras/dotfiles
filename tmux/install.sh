if [ ! -d ~/.dotfiles ]
then
	git clone https://github.com/nickbatsaras/dotfiles.git ~/.dotfiles
fi

source ~/.dotfiles/install.sh

install tmux

backup ~/.tmux.conf

ln -s ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf
