
let mapleader=" "
" NERDTree ----- {{{

map <C-n> :NERDTreeToggle<CR>

" }}}

" nerdcommenter ----- {{{

vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

" }}}

" tmux ----- {{{

" Split window
nmap <leader>ss :split<Return><C-w>w
nmap <leader>sv :vsplit<Return><C-w>w" Move window
map <leader>h <C-w>h
map <leader>k <C-w>k
map <leader>j <C-w>j
map <leader>\ :tabnew<Return>
map sl <C-w>l " Switch tab
nmap <Tab>h :tabprev<Return>
nmap <Tab>l :tabnext<Return>

" }}}


" Fzf ----- {{{

nnoremap <C-p> :Files<CR>
"nnoremap <Leader>b :Buffers<CR>
"nnoremap <Leader>h :History<CR>

" }}}

" Git 
nmap <leader>gh :diffget //3
nmap <leader>gu :diffget //2
nmap <leader>gs :G<CR>
