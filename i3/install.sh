eval "$(wget https://raw.githubusercontent.com/nickbatsaras/dotfiles/master/install.sh -O -)"

install i3

backup ~/.config/i3

mkdir ~/.config/i3

ln -s ~/.dotfiles/i3/config ~/.config/i3/config
