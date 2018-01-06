install neomutt

backup ~/.mutt
backup ~/.muttrc

mkdir ~/.mutt
mkdir ~/.mutt/cache
mkdir ~/.mutt/cache/bodies
mkdir ~/.mutt/cache/headers

ln -s ~/.dotfiles/mutt/.muttrc      ~/.muttrc
ln -s ~/.dotfiles/mutt/gmail.conf   ~/.mutt/gmail.conf
ln -s ~/.dotfiles/mutt/csd.uoc.conf ~/.mutt/csd.uoc.conf
