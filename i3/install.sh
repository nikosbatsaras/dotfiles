eval "$(wget https://raw.githubusercontent.com/nikosbatsaras/dotfiles/master/install.sh -O -)"

install i3
install feh
install acpi
install scrot
install pamixer
install compton
install pulseaudio
install alsa-utils
install imagemagick
install ttf-inconsolata
install xorg-xbacklight
install notification-daemon

backup ~/.config/i3
backup ~/.i3blocks.conf

mkdir -p ~/.config/i3

if [ ! -d ~/bin ]; then mkdir ~/bin; fi

ln -s ~/.dotfiles/i3/config          ~/.config/i3/config
ln -s ~/.dotfiles/i3/lock.sh         ~/bin/lock.sh
ln -s ~/.dotfiles/i3/.i3blocks.conf  ~/.i3blocks.conf

git clone https://github.com/nikosbatsaras/st.git
cd st && make && sudo make install && cd ..

mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf

sudo fc-cache -f -v
