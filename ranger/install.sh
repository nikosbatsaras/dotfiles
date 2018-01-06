install ranger

backup ~/.config/ranger

ranger --copy-config=all

rm ~/.config/ranger/rc.conf

ln -s ~/.dotfiles/ranger/rc.conf ~/.config/ranger/rc.conf
