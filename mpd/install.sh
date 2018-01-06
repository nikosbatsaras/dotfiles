install mpd

backup ~/.config/mpd

mkdir ~/.config/mpd
mkdir ~/.config/mpd/playlists

touch ~/.config/mpd/log
touch ~/.config/mpd/database

ln -s ~/.dotfiles/mpd/mpd.conf ~/.config/mpd/mpd.conf
