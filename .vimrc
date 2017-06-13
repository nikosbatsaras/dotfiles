set nocompatible                           " Make Vim no compatible with Vi
filetype off                               " Disable file type detection
syntax on                                  " Enable syntax highlighting

set smartindent                            " Enable smart auto-indentation
set expandtab                              " Transform tabs into spaces
set tabstop=4                              " Number of spaces for a tab
set shiftwidth=4                           " Number of spaces when auto-indenting

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
Plugin 'tpope/vim-fugitive'                " Git integration
Plugin 'tpope/vim-surround'                " Add the surround text-object
Plugin 'tpope/vim-repeat'                  " Enable surround commands to be repeated
Plugin 'scrooloose/nerdcommenter'          " Comment line, regions, etc
Plugin 'easymotion/vim-easymotion'         " Jump to char, word, line, in buffer

call vundle#end()                          " Vundle end
filetype plugin indent on                  " Needed for vundle

let g:NERDSpaceDelims = 1                  " Add a space between comment symbols
let g:NERDDefaultAlign = 'both'            " Align commnent symbols
let g:NERDCommentEmptyLines = 1            " Comment empty lines
let g:NERDTrimTrailingWhitespace = 1       " Trim trailing whitespace when uncommenting

let g:EasyMotion_smartcase = 1             " Enable case-insensitive match
let g:EasyMotion_do_mapping = 0            " Disable default mappings

" Change keybind to Space-f
map <Leader>f <Plug>(easymotion-bd-f)

" Better block indentation
vnoremap < <gv
vnoremap > >gv

" Tab navigation commands
nnoremap >   :tabnext<CR>
nnoremap <   :tabprev<CR>
nnoremap tf  :tabfirst<CR>
nnoremap tl  :tablast<CR>
nnoremap tn  :tabedit<Space>
nnoremap tc  :tabclose<CR>

set laststatus=2                           " Show statusline in one split

                                           " Statusline customization start
set statusline=%t                          " Show the name of the file
set statusline+=%m                         " Show (a cross) when buffer is modified
set statusline+=\ %{fugitive#statusline()} " Show git branch
set statusline+=%=                         " Align right
set statusline+=%15l                       " Show current line number
set statusline+=:%v                        " Show current column number
set statusline+=%15P                       " Show current position in buffer (in %)
                                           " Statusline customization end
