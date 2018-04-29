eval "$(wget https://raw.githubusercontent.com/nickbatsaras/dotfiles/master/install.sh -O -)"

install vim

backup ~/.vim
backup ~/.vimrc

mkdir ~/.vim
mkdir ~/.vim/pack
mkdir ~/.vim/pack/plugins
mkdir ~/.vim/pack/plugins/opt
mkdir ~/.vim/pack/plugins/start

cd ~/.vim/pack/plugins/opt
git clone https://github.com/joshdick/onedark.vim.git

ln -s ~/.dotfiles/vim/.vimrc ~/.vimrc

theme_path="/home/$USER/.vim/pack/plugins/opt/onedark.vim/colors/onedark.vim"

sed -i 's/(has_key(a:highlight, "bg") ? a:highlight.bg.cterm : "NONE")/"NONE"/g' "$theme_path"

echo '
" Window
hi StatusLine   ctermfg=249 ctermbg=none cterm=none
hi StatusLineNC ctermfg=244 ctermbg=none cterm=none
hi VertSplit    ctermfg=237 ctermbg=none cterm=none

" Menu
hi WildMenu ctermfg=232 ctermbg=62 cterm=bold

" Selection
hi Visual    ctermfg=none ctermbg=235 cterm=none
hi VisualNOS ctermfg=none ctermbg=235 cterm=none
hi IncSearch ctermfg=none ctermbg=238 cterm=none

" Spell
hi SpellBad ctermfg=210 ctermbg=235 cterm=none' >> "$theme_path"
