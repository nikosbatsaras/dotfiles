if [ ! -d ~/.dotfiles ]
then
	git clone https://github.com/nickbatsaras/dotfiles.git ~/.dotfiles
fi

source ~/.dotfiles/install.sh

install vim

backup ~/.vim
backup ~/.vimrc

mkdir ~/.vim
mkdir ~/.vim/pack
mkdir ~/.vim/pack/plugins
mkdir ~/.vim/pack/plugins/opt
mkdir ~/.vim/pack/plugins/start

ln -s ~/.dotfiles/vim/.vimrc ~/.vimrc
