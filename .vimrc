syntax enable 
filetype plugin on

set path+=** " For vim built in fuzzy :find
set wildignore+=**/node_modules/**
set wildmenu " For tab menu when using :find files

set background=dark
set number! relativenumber!
set omnifunc=syntaxcomplete#Complete
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2
set autoindent
set smartindent

call plug#begin('~/.vim/plugged')
" List plugins here as Plug 'repo/name'
Plug 'neoclide/coc.nvim'
Plug 'sheerun/vim-polyglot'

call plug#end()
