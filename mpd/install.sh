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

install mpd
install mpc

backup ~/Music
backup ~/.config/mpd

mkdir ~/Music
mkdir ~/.config/mpd
mkdir ~/.config/mpd/playlists

touch ~/.config/mpd/log
touch ~/.config/mpd/database

if [ ! -d ~/.dotfiles ]
then
	git clone https://github.com/nickbatsaras/dotfiles.git ~/.dotfiles
fi

ln -s ~/.dotfiles/mpd/mpd.conf ~/.config/mpd/mpd.conf

systemctl enable mpd.service
systemctl start  mpd.service
