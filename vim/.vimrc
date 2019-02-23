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

" Disable sounds/bells
set noerrorbells
set visualbell
set t_vb=

" ESC quits immediately
set ttimeoutlen=0

" Easier split resizing
map + <C-w>+
map - <C-w>-
map <C-n> <C-w><
map <C-m> <C-w>>

" Tab navigation commands
nnoremap >  :tabnext<CR>
nnoremap <  :tabprev<CR>
nnoremap te :tabedit<Space>
nnoremap tf :tabfind<Space>
nnoremap tc :tabclose<CR>

nnoremap <Right> :+tabmove<CR>
nnoremap <Left>  :-tabmove<CR>

" Starts auto-correction
map <F6> :setlocal spell! spelllang=en<CR>
map <F7> :setlocal spell! spelllang=el<CR>

" Auto-correct last misspelled word
imap <C-a>  <C-g>u<Esc>[s1z=`]a<C-g>u
nmap <C-a> i<C-g>u<Esc>[s1z=`]a<C-g>u<Esc>

" Run make in the background
nnoremap <Leader>m :silent execute 'make!' \| execute 'redraw!'<CR>
