
set guifont=Monaco:h20
set guifont=*
"if has("termguicolors")
"set termguicolors
"endif
colorscheme gruvbox
set background=dark cursorline termguicolors

hi! Normal ctermbg=NONE guibg=NONE 
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE 

set relativenumber

set smarttab
set cindent
set tabstop=2
set shiftwidth=2
" always uses spaces instead of tab characters
set expandtab

set noerrorbells
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

"set colorcolumn=80
"highlight ColorColumn ctermbg=0 guibg=lightgrey
