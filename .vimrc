set nocompatible
filetype off

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

let mapleader = " "

set rtp+=~/.dotfiles/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'derekwyatt/vim-scala'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tomasiser/vim-code-dark'

call vundle#end()
filetype plugin indent on

let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

let g:EasyMotion_smartcase = 1
let g:EasyMotion_do_mapping = 0
map <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

set t_Co=256
set t_ut=
colorscheme codedark

set laststatus=2
