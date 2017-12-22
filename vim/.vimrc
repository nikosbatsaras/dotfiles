set nocompatible                         " Make Vim no compatible with Vi
syntax on                                " Enable syntax highlighting

let mapleader = " "                      " Change <Leader> key to Space

set encoding=utf-8                       " Set encoding to UTF-8

set path+=**                             " Enable recursive search for :find

set autoindent                           " Enable auto-indentation

set shiftwidth=4                         " Number of spaces when auto-indenting
set softtabstop=4                        " Make backspace delete 4 spaces, like a tab
set expandtab                            " Transform tabs into spaces

set ignorecase                           " Make search case-insensitive
set incsearch                            " Start searching before pressing Enter

set nowrap                               " Don't wrap lines
set autoread                             " Reload file if changed outside of Vim
set wildmenu                             " Enable command-line completion
set scrolloff=2                          " Start scrolling two lines before top/bot

set rtp+=~/.dotfiles/bundle/Vundle.vim   " Vundle plugin path
call vundle#begin()                      " Vundle start

Plugin 'VundleVim/Vundle.vim'            " Needed for Vundle
Plugin 'tpope/vim-commentary'            " Comment stuff out
Plugin 'wesQ3/vim-windowswap'            " To swap splits easily
Plugin 'easymotion/vim-easymotion'       " Jump to char, word, line, in buffer
Plugin 'vim-scripts/xoria256.vim'        " xoria256 colorscheme
Plugin 'xuhdev/vim-latex-live-preview'   " Live LaTeX preview
Plugin 'christoomey/vim-tmux-navigator'  " Use same navigation keys for vim/tmux splits

call vundle#end()                        " Vundle end
filetype plugin on                       " Enable filetype detection for plugins
filetype indent on                       " Enable filetype detection for indentation

silent! colorscheme xoria256             " Set colorscheme

set laststatus=2                         " Show statusline in one split

let g:EasyMotion_do_mapping = 0          " Disable default easymotion mappings
let g:EasyMotion_smartcase  = 1          " Enable case-insensitive match

let g:windowswap_map_keys   = 0          " Prevent default windowswap bindings

let g:livepreview_previewer = 'zathura'  " PDF viewer to use
let g:livepreview_engine    = 'pdflatex' " LaTeX compiler to use

let g:tex_flavor            = 'latex'    " Set default TEX syntax

set splitright                           " Open new vertical split to the right
set splitbelow                           " Open new horizontal split below

source ~/.dotfiles/vim/maps.vim          " Source various keymaps
source ~/.dotfiles/vim/colors.vim        " Source various colors
source ~/.dotfiles/vim/.vimrc_snips      " Source various snippets
