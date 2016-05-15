" Use Vim settings, rather than Vi settings.
" This must be first, because it changes other options as a side effect.
set nocompatible
set shell=bash
filetype plugin indent on
set encoding=utf-8

set clipboard=unnamed

set backspace=indent,eol,start          " allow backspacing over everything in insert mode

set history=50		                    " keep 50 lines of command line history
set ruler		                        " show the cursor position all the time
set showcmd		                        " display incomplete commands
set incsearch		                    " do incremental searching

set mouse=a                             " enable mouse

set ignorecase
set smartcase                           " override ignorecase when search pattern contains upper case chars

syntax enable                           " syntax highlighting
set background=dark
colorscheme monokai
set hlsearch                            " highlighting search pattern
set nu                                  " line numbers

set expandtab                           " tab to spaces
set autoindent		                    " always set autoindenting on
set smartindent
set shiftwidth=4
set softtabstop=4
set tabstop=4
set tw=80                               " line width

set wildmenu
set wildmode=longest:full,full

set scrolloff=3

execute pathogen#infect()

if has("gui_running")
    set lines=999 columns=999
    set guioptions -=m
    set guioptions -=T
    set guioptions -=r
endif

nnoremap <C-e> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\~$', '\.pyc$', '__pycache__']
let NERDTreeShowHidden=1

