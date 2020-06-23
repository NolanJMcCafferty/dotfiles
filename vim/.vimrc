set nocompatible

" ----- Color ----- "
syntax on
syntax enable
colorscheme molokai 
hi Normal guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE

" ----- Line Numbers ----- " 
set number 
set relativenumber
set showcmd
set showmatch
set noshowmode

" ----- Searching ----- "
set incsearch
set hlsearch
set ignorecase
set smartcase

filetype off

" ----- Plugins ----- "
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic'"
Plugin 'kien/ctrlp.vim.git'

" ----- Linters ----- "
Plugin 'dense-analysis/ale'
let g:ale_linters = {'python': ['flake8']}
let g:ale_fixers  = {'python': []}  "black "

let g:ale_fix_on_save = 1
Plugin 'rking/ag.vim.git'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe.git' 
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" ----- Airline ----- "
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
    let g:airline_left_sep = '»'
    let g:airline_left_sep = '▶'
    let g:airline_right_sep = '«'
    let g:airline_right_sep = '◀'
    let g:airline_symbols.crypt = '🔒'
    let g:airline_symbols.linenr = '☰'
    let g:airline_symbols.linenr = '␊'
    let g:airline_symbols.linenr = '␤'
    let g:airline_symbols.linenr = '¶'
    let g:airline_symbols.maxlinenr = ''
    let g:airline_symbols.maxlinenr = '㏑'
    let g:airline_symbols.branch = '⎇'
    let g:airline_symbols.paste = 'ρ'
    let g:airline_symbols.paste = 'Þ'
    let g:airline_symbols.paste = '∥'
    let g:airline_symbols.spell = 'Ꞩ'
    let g:airline_symbols.notexists = 'Ɇ'
    let g:airline_symbols.whitespace = 'Ξ'

    " powerline symbols
    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''
    let g:airline_symbols.branch = ''
    let g:airline_symbols.readonly = ''
    let g:airline_symbols.linenr = '☰'
    let g:airline_symbols.maxlinenr = ''

set guifont=Source\ Code\ Pro\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
let g:airline_theme='bubblegum'

call vundle#end()

filetype plugin indent on 
