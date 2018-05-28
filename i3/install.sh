eval "$(wget https://raw.githubusercontent.com/nickbatsaras/dotfiles/master/install.sh -O -)"

install i3
install mpv
install feh
install sxiv
install scrot
install pamixer
install compton
install pulseaudio
install alsa-utils
install imagemagick

backup ~/.config/i3

mkdir ~/.config/i3

ln -s ~/.dotfiles/i3/config  ~/.config/i3/config
ln -s ~/.dotfiles/i3/lock.sh ~/bin/lock.sh
