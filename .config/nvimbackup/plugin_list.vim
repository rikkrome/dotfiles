call plug#begin('~/.config/nvim/plugged')


" Appearance and Themes
"Plug 'arzg/vim-colors-xcode'
Plug 'morhetz/gruvbox'

" Autocompletion & Intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Git
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'

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

" coc
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}

"
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
call plug#end()
