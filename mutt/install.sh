install() {
    sudo apt install "$1"
}

backup() {
    if [ -f "$1" ] || [ -d "$1" ]
    then
        echo "Backing-up: $1 -> $1_bak"
        mv "$1" "$1_bak"
    fi
}

install neomutt

backup ~/.mutt
backup ~/.muttrc

mkdir ~/.mutt
mkdir ~/.mutt/cache
mkdir ~/.mutt/cache/bodies
mkdir ~/.mutt/cache/headers

if [ ! -d ~/.dotfiles ]
then
	git clone https://github.com/nickbatsaras/dotfiles.git ~/.dotfiles
fi

ln -s ~/.dotfiles/mutt/.muttrc      ~/.muttrc
ln -s ~/.dotfiles/mutt/gmail.conf   ~/.mutt/gmail.conf
ln -s ~/.dotfiles/mutt/csd.uoc.conf ~/.mutt/csd.uoc.conf
