let mapleader = " "           " Change <Leader> key to Space

syntax on                     " Enable syntax highlighting

filetype plugin on            " Enable language-specific settings
filetype indent on            " Enable language-dependent indenting

set path+=**                  " Enable recursive search for :find
set autoindent                " Enable auto-indentation
set number                    " Show line numbers
set relativenumber            " Enable relative numbering
set ignorecase                " Make search case-insensitive
set incsearch                 " Start searching before pressing Enter
set nowrap                    " Don't wrap lines
set wildmenu                  " Enable command-line completion
set splitright                " Open new vertical split to the right
set splitbelow                " Open new horizontal split below
set laststatus=2              " Always show statusline

silent! colorscheme xoria256  " Set colorscheme

" Easier split resizing
map <C-n> <c-w><
map <C-m> <c-w>>

" Tab navigation commands
nnoremap >  :tabnext<CR>
nnoremap <  :tabprev<CR>
nnoremap te :tabedit<Space>
nnoremap tf :tabfind<Space>
nnoremap tc :tabclose<CR>

" Starts auto-correction
map <F6> :setlocal spell! spelllang=en<CR>
map <F7> :setlocal spell! spelllang=el<CR>

" Auto-correct last misspelled word.
imap <c-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" Reload config
map <leader>s :source ~/.vimrc<CR>

hi Visual cterm=bold ctermfg=NONE ctermbg=DarkGrey
