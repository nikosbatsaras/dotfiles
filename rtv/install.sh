eval "$(wget https://raw.githubusercontent.com/nickbatsaras/dotfiles/master/install.sh -O -)"

install python-pip
install mpv
install feh

sudo pip install msgpack-python
sudo pip install rtv

backup ~/.mailcap
backup ~/.config/rtv

mkdir -p ~/.config/rtv

if [ ! -d ~/bin ]; then mkdir ~/bin; fi

ln -s ~/.dotfiles/rtv/.mailcap ~/.mailcap
ln -s ~/.dotfiles/rtv/rtv.cfg  ~/.config/rtv/rtv.cfg

ln -s ~/.dotfiles/rtv/watch.sh    ~/bin/watch.sh
ln -s ~/.dotfiles/rtv/download.sh ~/bin/download.sh
