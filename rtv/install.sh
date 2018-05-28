eval "$(wget https://raw.githubusercontent.com/nickbatsaras/dotfiles/master/install.sh -O -)"

install python-pip

sudo pip install rtv

backup ~/.mailcap
backup ~/.config/rtv

mkdir  ~/.config/rtv

ln -s ~/.dotfiles/rtv/.mailcap ~/.mailcap
ln -s ~/.dotfiles/rtv/rtv.cfg  ~/.config/rtv/rtv.cfg

ln -s ~/.dotfiles/rtv/reddit_watch.sh    ~/bin/reddit_watch.sh
ln -s ~/.dotfiles/rtv/reddit_download.sh ~/bin/reddit_download.sh
