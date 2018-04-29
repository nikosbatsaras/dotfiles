eval "$(wget https://raw.githubusercontent.com/nickbatsaras/dotfiles/master/install.sh -O -)"

install xorg-server
install xorg-apps
install xorg-xinit

backup ~/.xinitrc
backup ~/.Xresources

ln -s ~/.dotfiles/X11/.xinitrc    ~/.xinitrc
ln -s ~/.dotfiles/X11/.Xresources ~/.Xresources

xrdb ~/.Xresources
