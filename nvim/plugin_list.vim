" #PLUGINS ----- {{{
call plug#begin('~/.local/share/nvim/plugged')

" Fuzzy Search
"Plug '~/.fzf'
"Plug 'junegunn/fzf.vim'

" Syntax Highlighting And Indentation For 100+ Languages
"Plug 'sheerun/vim-polyglot'

" Appearance and Themes
Plug 'arzg/vim-colors-xcode'


" Autocompletion & Intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Nav
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'christoomey/vim-tmux-navigator'

" Fuzzy Search
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" Utilities
"Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdcommenter' " // comment code


call plug#end()
" }}} -------
