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
Plugin 'tpope/vim-surround'              " Add the surround text-object
Plugin 'tpope/vim-repeat'                " Enable surround commands to be repeated
Plugin 'wesQ3/vim-windowswap'            " To swap splits easily
Plugin 'easymotion/vim-easymotion'       " Jump to char, word, line, in buffer
Plugin 'christoomey/vim-tmux-navigator'  " Use the same navigation keys for vim/tmux splits
Plugin 'vim-scripts/xoria256.vim'        " Install xoria256 colorscheme

call vundle#end()                        " Vundle end
filetype plugin on                       " Enable filetype detection for plugins
filetype indent on                       " Enable filetype detection for indentation

let g:EasyMotion_smartcase = 1           " Enable case-insensitive match
let g:EasyMotion_do_mapping = 0          " Disable default mappings

silent! colorscheme xoria256             " Set colorscheme

set laststatus=2                         " Show statusline in one split

" Change keybind to Space-f
map <Leader>f <Plug>(easymotion-bd-f)

" Better block indentation
vnoremap < <gv
vnoremap > >gv

" Easier split resizing
map <c-n> <c-w><
map <c-m> <c-w>>

" Tab navigation commands
nnoremap >   :tabnext<CR>
nnoremap <   :tabprev<CR>
nnoremap te  :tabedit<Space>
nnoremap tf  :tabfind<Space>
nnoremap tc  :tabclose<CR>
