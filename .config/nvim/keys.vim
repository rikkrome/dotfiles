
" NERDTree ----- {{{

map <C-n> :NERDTreeToggle<CR>

" }}}

" nerdcommenter ----- {{{

vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

" }}}

" tmux ----- {{{

" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w" Move window
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l" Switch tab
nmap <S-Tab> :tabprev<Return>
nmap <Tab> :tabnext<Return>

" }}}


" Fzf ----- {{{

nnoremap <C-p> :Files<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>h :History<CR>

" }}}

