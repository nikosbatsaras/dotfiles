if [ ! -d ~/.dotfiles ]
then
	git clone https://github.com/nickbatsaras/dotfiles.git ~/.dotfiles
fi

source ~/.dotfiles/install.sh

install ncmpcpp

backup ~/.ncmpcpp

mkdir ~/.ncmpcpp

ln -s ~/.dotfiles/ncmpcpp/bindings ~/.ncmpcpp/bindings
