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

install qutebrowser

backup ~/.config/qutebrowser

mkdir ~/.config/qutebrowser
mkdir ~/.config/qutebrowser/bookmarks

if [ ! -d ~/.dotfiles ]
then
	git clone https://github.com/nickbatsaras/dotfiles.git ~/.dotfiles
fi

ln -s ~/.dotfiles/qutebrowser/config.py ~/.config/qutebrowser/config.py
