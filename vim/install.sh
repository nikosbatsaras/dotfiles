eval "$(wget https://raw.githubusercontent.com/nickbatsaras/dotfiles/master/install.sh -O -)"

if [ ! -d ~/.dotfiles ]
then
	if [ "$(which git)" = "" ]
	then
		install git
	fi
	git clone https://github.com/nickbatsaras/dotfiles.git ~/.dotfiles
fi

install vim

backup ~/.vim
backup ~/.vimrc

mkdir ~/.vim
mkdir ~/.vim/pack
mkdir ~/.vim/pack/plugins
mkdir ~/.vim/pack/plugins/opt
mkdir ~/.vim/pack/plugins/start

ln -s ~/.dotfiles/vim/.vimrc ~/.vimrc
