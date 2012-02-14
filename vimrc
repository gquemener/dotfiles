call pathogen#infect()

set nocompatible                  " Must come first because it changes other options.
set encoding=utf-8

syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.
set wildignore=*/.git/*,*/cache/*,*.swp

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set number                        " Show line numbers.
set ruler                         " Show cursor position.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set wrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.

set title                         " Set the terminal's title

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set noswapfile

set tabstop=4                    " Global tab width.
set softtabstop=4
set shiftwidth=4                 " And again, related.
set expandtab                    " Use spaces instead of tabs
set autoindent
set smartindent
set nolist

if has('gui_running')
    set guifont=Monaco\ for\ Powerline\ 10  " set fonts for gui vim
    set guioptions=egmrt
endif

set laststatus=2                  " Show the status line all the time

colorscheme vivify

let mapleader=","
map <leader>u :call PhpInsertUse()<cr>

"PowerLine
let g:Powerline_symbols = 'fancy'
let g:PowerLine_cache_file="/tmp/powerline.cache"

"snipMate
let g:snips_author = 'Gildas Quéméner <gildas.quemener@gmail.com>'
