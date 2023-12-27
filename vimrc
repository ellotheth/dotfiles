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
    autocmd filetype go nmap <leader>c <Plug>(go-coverage-toggle)
    autocmd filetype go nmap <leader>b <Plug>(go-def-vertical)
    autocmd filetype go nmap <leader>B <Plug>(go-referrers)
    autocmd filetype go nmap <leader>T <Plug>(go-alternate-split)
    autocmd filetype go nmap <leader>d <Plug>(go-doc-vertical)
endif

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1

let g:go_fmt_command = "goimports"
let g:go_jump_to_error = 1
let g:syntastic_go_checkers = ['govet', 'go']
let g:go_info_mode = 'guru'
let g:go_list_type = "quickfix"
"let g:go_auto_sameids = 1
"let g:go_auto_type_info = 1
"let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
"let g:go_highlight_functions = 1
"let g:go_highlight_methods = 1
"let g:go_highlight_fields = 1
"let g:go_highlight_types = 1
"let g:go_highlight_operators = 1
"let g:go_highlight_build_constraints = 1

let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -Wall -Wextra -Wnarrowing -Wsign-conversion'

inoremap <C-@> <c-x><c-o>
nmap <F9> :TagbarToggle<CR>
nmap <leader>m :make<CR>
