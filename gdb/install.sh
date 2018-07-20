eval "$(wget https://raw.githubusercontent.com/nickbatsaras/dotfiles/master/install.sh -O -)"

install gdb

backup ~/.gdbinit

ln -s ~/.dotfiles/gdb/.gdbinit ~/.gdbinit
