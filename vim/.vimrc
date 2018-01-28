let mapleader = " "                      " Change <Leader> key to Space

set path+=**                             " Enable recursive search for :find

set autoindent                           " Enable auto-indentation

set ignorecase                           " Make search case-insensitive
set incsearch                            " Start searching before pressing Enter

set nowrap                               " Don't wrap lines
set wildmenu                             " Enable command-line completion

set splitright                           " Open new vertical split to the right
set splitbelow                           " Open new horizontal split below

set laststatus=2                         " Show statusline in one split

execute pathogen#infect()
filetype plugin indent on                " Load plugin/indent file
syntax on                                " Enable syntax highlighting

hi Visual
            \ cterm  =bold
            \ ctermfg=NONE
            \ ctermbg=DarkGrey

hi Search
            \ cterm  =bold
            \ ctermfg=NONE
            \ ctermbg=DarkGrey

source ~/.dotfiles/vim/maps.vim          " Source various keymaps
