
" COLOR_SCHEME----- {{{

if has("termguicolors")
set termguicolors
endif

colorscheme xcodewwdc


" ----- }}}

set relativenumber

" #TABS AND SPACES {{{

set smarttab
set cindent
set tabstop=2
set shiftwidth=2
" always uses spaces instead of tab characters
set expandtab

"}}}

" coc ----- {{{

" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

"}}}
