if [ ! -d ~/.dotfiles ]
then
	git clone https://github.com/nickbatsaras/dotfiles.git ~/.dotfiles
fi

source ~/.dotfiles/install.sh

install vim

backup ~/.vim
backup ~/.vimrc

mkdir ~/.vim
mkdir ~/.vim/bundle
mkdir ~/.vim/autoload

cd ~/.vim/autoload
wget ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim/bundle
git clone https://github.com/tpope/vim-commentary.git

ln -s ~/.dotfiles/vim/.vimrc   ~/.vimrc
ln -s ~/.dotfiles/vim/maps.vim ~/.vim/maps.vim
