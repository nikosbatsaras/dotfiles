if [ ! -d ~/.dotfiles ]
then
	git clone https://github.com/nickbatsaras/dotfiles.git ~/.dotfiles
fi

source ~/.dotfiles/install.sh

install mpd
install mpc

backup ~/Music
backup ~/.config/mpd

mkdir ~/Music
mkdir ~/.config/mpd
mkdir ~/.config/mpd/playlists

touch ~/.config/mpd/log
touch ~/.config/mpd/database

ln -s ~/.dotfiles/mpd/mpd.conf ~/.config/mpd/mpd.conf

systemctl enable mpd.service
systemctl start  mpd.service
