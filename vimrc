execute pathogen#infect()

set nocompatible

set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

set nowrap
set autoindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set backspace=indent,eol,start
set colorcolumn=80
set textwidth=79
set fdm=syntax
set nofoldenable

syntax on
filetype on
filetype plugin on
filetype indent on
set number
set showmatch
"set ruler
set laststatus=2
set showmode

set autoread
set hidden

set directory=~/.vim/tmp,/var/tmp,/tmp

set incsearch

if has ("autocmd")
    autocmd filetype java setlocal omnifunc=javacomplete#Complete
    autocmd filetype java setlocal completefunc=javacomplete#CompleteParamsInfo

    autocmd filetype python set fdm=indent

    autocmd filetype go set noexpandtab
endif

let g:go_fmt_command = "goimports"

inoremap <C-@> <c-x><c-o>
nmap <F9> :TagbarToggle<CR>
