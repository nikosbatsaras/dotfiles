eval "$(wget https://raw.githubusercontent.com/nickbatsaras/dotfiles/master/install.sh -O -)"

install mpv

backup ~/.config/mpv

mkdir -p ~/.config/mpv

ln -s ~/.dotfiles/mpv/mpv.conf   ~/.config/mpv/mpv.conf
ln -s ~/.dotfiles/mpv/input.conf ~/.config/mpv/input.conf
