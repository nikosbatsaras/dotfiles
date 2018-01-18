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

install ncmpcpp

backup ~/.ncmpcpp

mkdir ~/.ncmpcpp

if [ ! -d ~/.dotfiles ]
then
	git clone https://github.com/nickbatsaras/dotfiles.git ~/.dotfiles
fi

ln -s ~/.dotfiles/ncmpcpp/bindings ~/.ncmpcpp/bindings
