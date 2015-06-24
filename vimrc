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

let mapleader=" "

if has ("autocmd")
    autocmd filetype java setlocal omnifunc=javacomplete#Complete
    autocmd filetype java setlocal completefunc=javacomplete#CompleteParamsInfo

    autocmd filetype python set fdm=indent

    autocmd filetype go set noexpandtab
    autocmd filetype go nmap <leader>t <Plug>(go-test)
    autocmd filetype go nmap <leader>i <Plug>(go-info)
    autocmd filetype go nmap <leader>e <Plug>(go-rename)
endif

let g:go_fmt_command = "goimports"
let g:go_jump_to_error = 0

inoremap <C-@> <c-x><c-o>
nmap <F9> :TagbarToggle<CR>
nmap <leader>m :make<CR>
