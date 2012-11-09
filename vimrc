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
set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,*.pyc,*.pyo,*.log,**/cache/**,**/logs/**,**/zend/**,**/vendor/**/vendor/**,web/css,web/js,web/bundles,*/project/*,*/target/*,*.hi

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
set mouse=n

set cursorline

set tags=tags,vendor.tags,pear.tags

set completeopt=menuone

if has('gui_running')
    set guifont=Inconsolata\ 14
    set guioptions=egmrt
endif

set laststatus=2                  " Show the status line all the time

colorscheme wombat

let mapleader=","
map <leader>u :call PhpInsertUse()<cr>

" Go back to the method call
map <leader>p <C-t>

"PowerLine
let g:Powerline_symbols = 'fancy'
let g:PowerLine_cache_file="/tmp/powerline.cache"

"snipMate
let g:snips_author = 'Gildas Quéméner <gildas.quemener@gmail.com>'

"behat
let feature_filetype='behat'

"Syntastic
let g:syntastic_mode_map = { 'mode': 'active',
            \ 'active_filetypes': ['ruby', 'php'],
            \ 'passive_filetypes': ['css', 'scss'] }
let g:syntastic_phpcs_conf=" --standard=PSR2 --extensions=php"


cabbrev bda bufdo bd<cr>

inoremap jj      <esc>
inoremap kk      \
inoremap <up>    <nop>
inoremap <down>  <nop>
inoremap <left>  <nop>
inoremap <right> <nop>
"inoremap <esc>   <nop>

imap <F1> <Esc>

nmap <leader><tab><tab> :Tab /
vmap <leader><tab> :Tab /
nmap <leader><tab>= :Tab /=<cr>
vmap <leader><tab>= :Tab /=<cr>
nmap <leader><tab>: :Tab /:\zs<cr>
vmap <leader><tab>: :Tab /:\zs<cr>
nmap <leader><tab>> :Tab /=><cr>
vmap <leader><tab>> :Tab /=><cr>

" Highlight trailing whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" automatically remove trailing whitespace before write
function! StripTrailingWhitespace()
    normal mZ
    %s/\s\+$//e
    if line("'Z") != line(".")
        echo "Stripped whitespace\n"
    endif
    normal `Z
endfunction

map <F3> :call StripTrailingWhitespace()<CR>
map! <F3> :call StripTrailingWhitespace()<CR>

" do a grep search on the word under cursor
nmap <leader>f :grep -Rno "<C-r><C-w>"
" do a grep search on the selected text
vmap <leader>f y:grep -Rno "<C-r>"

let g:ctrlp_cmd = 'CtrlPMRU'
map <leader>lp :LustyJugglePrevious<cr>

" search on php.net for current word
command! Browse : ! $BROWSER php.net/<cword>

inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

function! s:align()
    let p = '^\s*|\s.*\s|\s*$'
    if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
        let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
        let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
        Tabularize/|/l1
        normal! 0
        call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
    endif
endfunction

autocmd BufWrite * :call <SID>MkdirsIfNotExists(expand('<afile>:h'))

function! <SID>MkdirsIfNotExists(directory)
    if(!isdirectory(a:directory))
        call system('mkdir -p '.shellescape(a:directory))
    endif
endfunction
