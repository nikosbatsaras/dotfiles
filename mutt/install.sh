eval "$(wget https://raw.githubusercontent.com/nickbatsaras/dotfiles/master/install.sh -O -)"

if [ ! -d ~/.dotfiles ]
then
	if [ "$(which git)" = "" ]
	then
		install git
	fi
	git clone https://github.com/nickbatsaras/dotfiles.git ~/.dotfiles
fi

if [ "$dist" = Ubuntu ]
then
	install mutt
elif [ "$dist" = Arch ]
then
	install neomutt
fi

backup ~/.mutt
backup ~/.muttrc

mkdir ~/.mutt
mkdir ~/.mutt/cache
mkdir ~/.mutt/cache/bodies
mkdir ~/.mutt/cache/headers

ln -s ~/.dotfiles/mutt/.muttrc      ~/.muttrc
ln -s ~/.dotfiles/mutt/gmail.conf   ~/.mutt/gmail.conf
ln -s ~/.dotfiles/mutt/csd.uoc.conf ~/.mutt/csd.uoc.conf
