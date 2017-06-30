set nocompatible                           " Make Vim no compatible with Vi
filetype off                               " Disable file type detection
syntax on                                  " Enable syntax highlighting

set smartindent                            " Enable smart auto-indentation
set expandtab                              " Transform tabs into spaces
set tabstop=4                              " Number of spaces for a tab
set shiftwidth=4                           " Number of spaces when auto-indenting
set softtabstop=4                          " Make backspace delete 4 spaces, like a tab

set path+=**                               " Enable recursive search for :find
set ignorecase                             " Make search case-insensitive
set autoread                               " Reload file if changed outside of Vim
set wildmenu                               " Enable command-line completion
set nowrap                                 " Don't wrap lines
set scrolloff=2                            " Start scrolling two lines before top/bot

let mapleader = " "                        " Change <Leader> key to Space

set rtp+=~/.dotfiles/bundle/Vundle.vim     " Vundle plugin path
call vundle#begin()                        " Vundle start

Plugin 'VundleVim/Vundle.vim'              " Needed for Vundle
Plugin 'tpope/vim-commentary'              " Comment stuff out
Plugin 'tpope/vim-surround'                " Add the surround text-object
Plugin 'tpope/vim-repeat'                  " Enable surround commands to be repeated
Plugin 'wesQ3/vim-windowswap'              " To swap splits easily
Plugin 'easymotion/vim-easymotion'         " Jump to char, word, line, in buffer
Plugin 'christoomey/vim-tmux-navigator'    " Use the same navigation keys for vim/tmux splits
Plugin 'vim-scripts/xoria256.vim'          " Install xoria256 colorscheme

call vundle#end()                          " Vundle end
filetype plugin indent on                  " Needed for vundle

let g:EasyMotion_smartcase = 1             " Enable case-insensitive match
let g:EasyMotion_do_mapping = 0            " Disable default mappings

colorscheme xoria256                       " Set colorscheme

set laststatus=2                           " Show statusline in one split

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
nnoremap tf  :tabfirst<CR>
nnoremap tl  :tablast<CR>
nnoremap tn  :tabfind<Space>
nnoremap tc  :tabclose<CR>
