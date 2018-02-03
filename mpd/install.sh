eval "$(wget https://raw.githubusercontent.com/nickbatsaras/dotfiles/master/install.sh -O -)"

if [ ! -d ~/.dotfiles ]
then
	if [ "$(which git)" = "" ]
	then
		install git
	fi
	git clone https://github.com/nickbatsaras/dotfiles.git ~/.dotfiles
fi

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
