eval "$(wget https://raw.githubusercontent.com/nikosbatsaras/dotfiles/master/install.sh -O -)"

# install xorg-server
# install xorg-xinit
# install xorg-apps
# install xdg-utils

backup ~/.xinitrc
# backup ~/.Xresources

ln -s ~/.dotfiles/X11/.xinitrc ~/.xinitrc

# xrdb ~/.Xresources
