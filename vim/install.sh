eval "$(wget https://raw.githubusercontent.com/nickbatsaras/dotfiles/master/install.sh -O -)"

install vim

backup ~/.vim
backup ~/.vimrc

mkdir ~/.vim
mkdir ~/.vim/pack
mkdir ~/.vim/pack/plugins
mkdir ~/.vim/pack/plugins/opt
mkdir ~/.vim/pack/plugins/start

cd ~/.vim/pack/plugins/opt
git clone https://github.com/joshdick/onedark.vim.git
git clone https://github.com/itchyny/lightline.vim.git

ln -s ~/.dotfiles/vim/.vimrc ~/.vimrc
