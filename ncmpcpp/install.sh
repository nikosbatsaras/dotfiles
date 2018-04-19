eval "$(wget https://raw.githubusercontent.com/nickbatsaras/dotfiles/master/install.sh -O -)"

install ncmpcpp

backup ~/.ncmpcpp

mkdir ~/.ncmpcpp

ln -s ~/.dotfiles/ncmpcpp/bindings ~/.ncmpcpp/bindings
