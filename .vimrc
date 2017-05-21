set nocompatible
filetype off

" Better identation
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Change <Leader> key to Space
let mapleader = " "

" Vundle bootstrap
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

" Find hidden files with ctrl-p
let g:ctrlp_show_hidden = 1

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

" Use the codedark theme
set t_Co=256
set t_ut=
colorscheme codedark

" Show statusline even with one split
set laststatus=2

" Don't highlight matching parens
let g:loaded_matchparen = 0

" Better block identation
vnoremap < <gv
vnoremap > >gv

" Statusline appearance
set statusline=%t
set statusline+=%m
set statusline+=%=
set statusline+=%15l
set statusline+=:%v
set statusline+=%15P
