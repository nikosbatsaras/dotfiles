eval "$(wget https://raw.githubusercontent.com/nickbatsaras/dotfiles/master/install.sh -O -)"

install i3
install feh
install sxiv
install scrot
install pamixer
install compton
install pulseaudio
install alsa-utils
install imagemagick
install ttf-inconsolata

install arc-gtk-theme
install arc-icon-theme

install pcmanfm
install evince
install redshift

install pass

backup ~/.config/i3
backup ~/.gtkrc-2.0

mkdir -p ~/.config/i3

if [ ! -d ~/bin ]; then mkdir ~/bin; fi

ln -s ~/.dotfiles/i3/config         ~/.config/i3/config
ln -s ~/.dotfiles/i3/lock.sh        ~/bin/lock.sh

ln -s ~/.dotfiles/i3/.gtkrc-2.0     ~/.gtkrc-2.0
ln -s ~/.dotfiles/i3/redshift.conf  ~/.config/redshift.conf
