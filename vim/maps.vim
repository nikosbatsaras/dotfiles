" Better block indentation
vnoremap < <gv
vnoremap > >gv

" Easier split resizing
map <C-n> <c-w><
map <C-m> <c-w>>

map <M-n> <c-w>-
map <M-m> <c-w>+

" Tab navigation commands
nnoremap >  :tabnext<CR>
nnoremap <  :tabprev<CR>
nnoremap te :tabedit<Space>
nnoremap tf :tabfind<Space>
nnoremap tc :tabclose<CR>

" Easier split navigation
nnoremap <M-j> <C-W><C-J>
nnoremap <M-k> <C-W><C-K>
nnoremap <M-h> <C-W><C-H>
nnoremap <M-l> <C-W><C-L>

" Starts auto-correction
map <F6> :setlocal spell! spelllang=en<CR>
map <F7> :setlocal spell! spelllang=el<CR>

" Auto-correct last misspelled word.
imap <c-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" Reload config
map <leader>s :source ~/.config/nvim/init.vim<CR>
