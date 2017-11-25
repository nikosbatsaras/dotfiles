# General
- i3 (i3-gaps) The desktop environment
- zsh          The shell
- vim          The text editor
- urxvt        The terminal
- tmux         The terminal multiplexer
- mpd          The music player daemon
- ncmpcpp      The mpd client


# Dependencies
## Install i3-gaps dependencies (or just plain i3)
For ubuntu 16.04
```bash
sudo add-apt-repository ppa:aguignard/ppa
sudo apt-get update
sudo apt-get install libxcb-xrm-dev
sudo apt-get install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf libxcb-xrm-dev
```
For ubuntu 16.10+
```bash
sudo apt-get install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf libxcb-xrm0 libxcb-xrm-dev automake
```

## Move on to i3-gaps installation
```bash
cd ~/

# clone the repository
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps

# compile & install
autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/

# Disabling sanitizers is important for release versions!
# The prefix and sysconfdir are, obviously, dependent on the distribution.
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install
```

## Install the rest
```bash
sudo apt-get install i3blocks zsh vim urxvt tmux mpd ncmpcpp mpc scrot
```


# Setup Installation
Clone the repo to your home directory:
```bash
git clone https://github.com/nickbatsaras/dotfiles.git ~/.dotfiles
```
Install vundle (a plugin manager for vim):
```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.dotfiles/bundle/Vundle.vim
```
Install oh-my-zsh:
```
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
```
Make zsh default shell:
```
chsh -s $(which zsh)
```


# Finally, setup configs
```bash
chmod +x ~/.dotfiles/setup.sh
~/.dotfiles/setup.sh
```
