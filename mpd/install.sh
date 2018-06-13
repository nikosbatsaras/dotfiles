eval "$(wget https://raw.githubusercontent.com/nickbatsaras/dotfiles/master/install.sh -O -)"

install mpd
install mpc

backup ~/Music
backup ~/.mpd

mkdir ~/Music
mkdir -p ~/.mpd/playlists

touch ~/.mpd/log
touch ~/.mpd/database

ln -s ~/.dotfiles/mpd/mpd.conf ~/.mpd/mpd.conf

mpd
