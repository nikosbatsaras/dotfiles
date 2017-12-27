" Better block indentation
vnoremap < <gv
vnoremap > >gv

" Easier split resizing
map <c-n> <c-w><
map <c-m> <c-w>>

" Tab navigation commands
nnoremap >  :tabnext<CR>
nnoremap <  :tabprev<CR>
nnoremap te :tabedit<Space>
nnoremap tf :tabfind<Space>
nnoremap tc :tabclose<CR>

" Jump to characters
nmap s <Plug>(easymotion-bd-f)
nmap s <Plug>(easymotion-overwin-f)

" Easier split navigation
execute "set <M-j>=\ej"
execute "set <M-k>=\ek"
execute "set <M-h>=\eh"
execute "set <M-l>=\el"
nnoremap <M-j> <C-W><C-J>
nnoremap <M-k> <C-W><C-K>
nnoremap <M-h> <C-W><C-H>
nnoremap <M-l> <C-W><C-L>

" Autocorrent last misspelled word.
imap <c-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" Swap windows
nnoremap <silent> <leader>ww :call WindowSwap#EasyWindowSwap()<CR>
