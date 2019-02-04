eval "$(wget https://raw.githubusercontent.com/nikosbatsaras/dotfiles/master/install.sh -O -)"

install rxvt-unicode
install ttf-inconsolata

backup ~/.urxvt

mkdir -p ~/.urxvt/ext

cd ~/.urxvt/ext
git clone https://github.com/majutsushi/urxvt-font-size.git

cp urxvt-font-size/font-size .

rm -rf urxvt-font-size/

xrdb ~/.Xresources
