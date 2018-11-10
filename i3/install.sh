eval "$(wget https://raw.githubusercontent.com/nickbatsaras/dotfiles/master/install.sh -O -)"

install i3
install feh
install sxiv
install scrot
install pamixer
install compton
install pulseaudio
install alsa-utils
install imagemagick
install ttf-inconsolata

install arc-gtk-theme
install arc-icon-theme

install pcmanfm
install evince
install redshift

install acpi
install pass

backup ~/.config/i3
backup ~/.i3blocks.conf
backup ~/.gtkrc-2.0
backup ~/.config/gtk-3.0

mkdir -p ~/.config/i3
mkdir    ~/.config/gtk-3.0

if [ ! -d ~/bin ]; then mkdir ~/bin; fi

ln -s ~/.dotfiles/i3/config           ~/.config/i3/config
ln -s ~/.dotfiles/i3/lock.sh          ~/bin/lock.sh
ln -s ~/.dotfiles/i3/.i3blocks.conf   ~/.i3blocks.conf

ln -s ~/.dotfiles/i3/.gtkrc-2.0       ~/.gtkrc-2.0
ln -s ~/.dotfiles/i3/settings.ini     ~/.config/gtk-3.0/settings.ini
ln -s ~/.dotfiles/i3/redshift.conf    ~/.config/redshift.conf

mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf

sudo fc-cache -f -v
