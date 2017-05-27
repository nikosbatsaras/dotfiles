set nocompatible
filetype off

" Better identation
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4

" Make search case-insensitive
set ignorecase

" Enable recursive search with :find
set path+=**

" Change <Leader> key to Space
let mapleader = " "

" Vundle bootstrap
set rtp+=~/.dotfiles/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'scrooloose/nerdcommenter'
Plugin 'joshdick/onedark.vim'

call vundle#end()
filetype plugin indent on

" Better behaviour with nerd-commenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

" Smart matches for easymotion
let g:EasyMotion_smartcase = 1
let g:EasyMotion_do_mapping = 0
" Change keybind for easymotion to Space-f
map <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" Use the onedark theme
colorscheme onedark

" Show statusline even with one split
set laststatus=2

" Better block identation
vnoremap < <gv
vnoremap > >gv

" Statusline appearance
set statusline=%t
set statusline+=%m
set statusline+=\ %{fugitive#statusline()}
set statusline+=%=
set statusline+=%15l
set statusline+=:%v
set statusline+=%15P
