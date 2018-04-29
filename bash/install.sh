eval "$(wget https://raw.githubusercontent.com/nickbatsaras/dotfiles/master/install.sh -O -)"

install xdg-utils

backup ~/.bashrc
backup ~/.bash_profile

ln -s ~/.dotfiles/bash/.bashrc       ~/.bashrc
ln -s ~/.dotfiles/bash/.bash_profile ~/.bash_profile

source ~/.bashrc
