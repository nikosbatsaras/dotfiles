set nocompatible
filetype off

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

let mapleader = ","

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'scrooloose/nerdcommenter'

Plugin 'derekwyatt/vim-scala'

call vundle#end()
filetype plugin indent on

map <c-n> :NERDTreeToggle<CR>

let g:NERDSpaceDelims = 1

let g:NERDCompactSexyComs = 1

let g:NERDDefaultAlign = 'left'

let g:NERDCommentEmptyLines = 1

let g:NERDTrimTrailingWhitespace = 1
