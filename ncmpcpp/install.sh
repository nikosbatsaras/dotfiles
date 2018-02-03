eval "$(wget https://raw.githubusercontent.com/nickbatsaras/dotfiles/master/install.sh -O -)"

if [ ! -d ~/.dotfiles ]
then
	if [ "$(which git)" = "" ]
	then
		install git
	fi
	git clone https://github.com/nickbatsaras/dotfiles.git ~/.dotfiles
fi

install ncmpcpp

backup ~/.ncmpcpp

mkdir ~/.ncmpcpp

ln -s ~/.dotfiles/ncmpcpp/bindings ~/.ncmpcpp/bindings
