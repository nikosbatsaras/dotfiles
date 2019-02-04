eval "$(wget https://raw.githubusercontent.com/nikosbatsaras/dotfiles/master/install.sh -O -)"

install tmux

backup ~/.tmux.conf

ln -s ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf
