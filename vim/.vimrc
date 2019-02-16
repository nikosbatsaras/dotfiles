silent! packadd! onedark.vim    " Install onedark package

syntax on                       " Enable syntax highlighting

colorscheme onedark             " Set colorscheme

filetype plugin on              " Enable language-specific settings
filetype indent on              " Enable language-dependent indenting

let mapleader = " "             " Change <Leader> key to Space

set path+=**                    " Enable recursive search for :find
set autoindent                  " Enable auto-indentation
set ignorecase                  " Make search case-insensitive
set incsearch                   " Start searching before pressing Enter
set nowrap                      " Don't wrap lines
set wildmenu                    " Enable command-line completion
set splitright                  " Open new vertical split to the right
set splitbelow                  " Open new horizontal split below
set nohlsearch                  " Disable search highlighting
set laststatus=2                " Always show statusline
set nocompatible                " Not compatible with Vi

set noerrorbells
set visualbell
set t_vb=

set ttimeoutlen=0

" Easier split resizing
map + <C-w>+
map - <C-w>-
map <C-n> <C-w><
map <C-m> <C-w>>

" Easier split navigation
execute "set <M-j>=\ej"
execute "set <M-k>=\ek"
execute "set <M-h>=\eh"
execute "set <M-l>=\el"

nnoremap <M-j> <C-W>j
nnoremap <M-k> <C-W>k
nnoremap <M-h> <C-W>h
nnoremap <M-l> <C-W>l

" Split commands
nnoremap s  :split<Space>
nnoremap vs :vsplit<Space>

" Tab navigation commands
nnoremap >  :tabnext<CR>
nnoremap <  :tabprev<CR>
nnoremap te :tabedit<Space>
nnoremap tf :tabfind<Space>
nnoremap tc :tabclose<CR>

nnoremap <Right> :+tabmove<CR>
nnoremap <Left>  :-tabmove<CR>

" Run make in the background
nnoremap <Leader>m :silent execute 'make!' \| execute 'redraw!'<CR>

" Starts auto-correction
map <F6> :setlocal spell! spelllang=en<CR>
map <F7> :setlocal spell! spelllang=el<CR>

" Auto-correct last misspelled word
imap <C-a>  <C-g>u<Esc>[s1z=`]a<C-g>u
nmap <C-a> i<C-g>u<Esc>[s1z=`]a<C-g>u<Esc>

" Save/Write
map <Leader>w :w<CR>

" Reload config
map <Leader>s :source ~/.vimrc<CR>
