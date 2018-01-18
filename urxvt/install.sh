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

install rxvt-unicode
install ttf-ubuntu-font-family

backup ~/.Xdefaults
backup ~/.Xresources

if [ ! -d ~/.dotfiles ]
then
	git clone https://github.com/nickbatsaras/dotfiles.git ~/.dotfiles
fi

ln -s ~/.dotfiles/urxvt/.Xresources ~/.Xdefaults
