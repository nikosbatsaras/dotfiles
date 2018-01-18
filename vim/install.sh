install() {
    sudo pacman -S "$1"
}

backup() {
    if [ -f "$1" ] || [ -d "$1" ]
    then
        echo "Backing-up: $1 -> $1_bak"
        mv "$1" "$1_bak"
    fi
}

install neovim

backup ~/.config/nvim

mkdir ~/.config/nvim
mkdir ~/.config/nvim/bundle
mkdir ~/.config/nvim/autoload

cd ~/.config/nvim/autoload
wget ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.config/nvim/bundle
git clone https://github.com/tpope/vim-commentary.git
git clone https://github.com/christoomey/vim-tmux-navigator.git

if [ ! -d ~/.dotfiles ]
then
	git clone https://github.com/nickbatsaras/dotfiles.git ~/.dotfiles
fi

ln -s ~/.dotfiles/vim/init.vim ~/.config/nvim/init.vim
ln -s ~/.dotfiles/vim/maps.vim ~/.config/nvim/maps.vim