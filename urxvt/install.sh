eval "$(wget https://raw.githubusercontent.com/nickbatsaras/dotfiles/master/install.sh -O -)"

install rxvt-unicode
install ttf-ubuntu-font-family

backup ~/.Xresources

ln -s ~/.dotfiles/urxvt/.Xresources ~/.Xresources

xrdb ~/.Xresources
