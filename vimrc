"
" Vundle Configuration
"
set nocompatible               " be iMproved
filetype off                   " required!

call plug#begin('~/.vim/plugged')

Plug 'Herzult/phpspec-vim'
Plug 'SirVer/ultisnips'
Plug 'airblade/vim-gitgutter'
Plug 'arnaud-lb/vim-php-namespace'
Plug 'beyondwords/vim-twig'
Plug 'docteurklein/php-getter-setter.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'edkolev/tmuxline.vim'
Plug 'gerw/vim-HiLinkTrace'
Plug 'godlygeek/tabular'
Plug 'greggroth/vim-cucumber-folding'
Plug 'groenewege/vim-less'
Plug 'honza/vim-snippets'
Plug 'itchyny/lightline.vim'
Plug 'jelera/vim-javascript-syntax'
Plug 'joonty/vdebug'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'leafgarland/typescript-vim'
Plug 'mileszs/ack.vim'
Plug 'mxw/vim-jsx'
Plug 'nelstrom/vim-markdown-folding'
Plug 'nelstrom/vim-visual-star-search'
Plug 'sjbach/lusty'
Plug 'stephpy/vim-yaml'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-markdown'
Plug 'vim-scripts/Rename'
Plug 'vim-syntastic/syntastic'

call plug#end()

"
" General configuration
"
scriptencoding utf-8
set encoding=utf-8

" fast gitgutter update
set updatetime=100

syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.

set showcmd                       " Display incomplete commands.
set noshowmode                    " Hide the mode you're in.

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

set expandtab                    " Use spaces instead of tabs
set autoindent
set smartindent
set nolist
set mouse=n

set cursorline

set tags=tags,vendor.tags;
set cscopetag cst
set csto=1
cscope add cscope.out

set completeopt=menuone

if has('gui_running')
set guifont=Inconsolata\ 11
set guioptions=eg
endif

set laststatus=2                  " Show the status line all the time

colorscheme mustang

let mapleader=","

"behat
let feature_filetype='behat'

"Syntastic
let g:syntastic_mode_map={ 'mode': 'active',
        \ 'active_filetypes': ['php'],
        \ 'passive_filetypes': ['ruby', 'css', 'scss', 'html'] }
let g:syntastic_error_symbol   = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_php_checkers = ['php', 'phpstan']

"Wipe all buffers
cabbrev bda bufdo bw<cr>

inoremap jj      <esc>
inoremap kk      \
inoremap <up>    <nop>
inoremap <down>  <nop>
inoremap <left>  <nop>
inoremap <right> <nop>
inoremap <esc>   <nop>
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

imap <F1> <Esc>

""
" TABULARIZE
""
nmap <leader><tab><tab> :Tab /
vmap <leader><tab> :Tab /
nmap <leader><tab>= :Tab /=<cr>
vmap <leader><tab>= :Tab /=<cr>
nmap <leader><tab>: :Tab /:\zs<cr>
vmap <leader><tab>: :Tab /:\zs<cr>
nmap <leader><tab>> :Tab /=><cr>
vmap <leader><tab>> :Tab /=><cr>
nmap <leader><tab>$ :Tab /$.*<cr>
vmap <leader><tab>$ :Tab /$.*<cr>

""
" FZF
""
nnoremap <c-p> :FZF<cr>
let g:fzf_history_dir = '~/.local/share/fzf-history'

""
" PHPUNIT
""
nnoremap <leader>P :!phpunit -c app/ %<CR>

""
" WINDOWS MANAGEMENT
""
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

autocmd FileType * set tabstop=4
autocmd FileType * set softtabstop=4
autocmd FileType * set shiftwidth=4
autocmd FileType behat set tabstop=2
autocmd FileType behat set softtabstop=2
autocmd FileType behat set shiftwidth=2
autocmd FileType less set tabstop=4
autocmd FileType less set softtabstop=4
autocmd FileType less set shiftwidth=4
autocmd FileType scala set tabstop=2
autocmd FileType scala set softtabstop=2
autocmd FileType scala set shiftwidth=2

" Highlight trailing whitespaces and long lines
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

autocmd FileType * set colorcolumn=120
autocmd FileType gitcommit set colorcolumn=72

autocmd BufNewFile,BufRead *.fpp set filetype=haskell
autocmd BufNewFile,BufRead *.asvc set filetype=json

" automatically remove trailing whitespace before write
function! StripTrailingWhitespace()
    normal mZ
    %s/\s\+$//e
    if line("'Z") != line(".")
        echo "Stripped whitespace\n"
    endif
    normal `Z
endfunction

map <leader><F3> :call StripTrailingWhitespace()<CR>
map! <leader><F3> :call StripTrailingWhitespace()<CR>

" do a grep search on the word under cursor
nmap <leader>f :Rg <C-r><C-w>
" do a grep search on the selected text
vmap <leader>f y:Rg <C-r>
" adds the grep result to the args list to perform mass edit operation
nmap <leader>a :args `grep -Rl \"<C-r><C-w>\" src/`

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

"Lightline
let g:lightline = {
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
    \ },
    \ 'component': {
    \     'readonly': '%{&readonly?"":""}',
    \     'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
    \     'fugitive': '%{exists("*fugitive#head")?" " . fugitive#head():""}'
    \ },
    \ 'component_function': {
    \     'filename': 'MyFilename'
    \ },
    \ 'component_visible_condition': {
    \     'readonly': '(&filetype!="help"&& &readonly)',
    \     'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
    \     'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
    \ },
    \ 'separator': { 'left': '', 'right': '' },
    \ 'subseparator': { 'left': '', 'right': '' }
    \ }

function! MyFilename()
    return ('' != expand('%:t') ? expand('%') : '[No Name]')
endfunction

let g:vdebug_options = {
    \ 'debug_file': '',
    \ 'debug_file_level': 0,
    \ 'continuous_mode': 0,
    \ 'ide_key': '',
    \ 'break_on_open': 1,
    \ 'on_close': 'detach',
    \ 'path_maps': {'/app': './', '/code': './'},
    \ 'timeout': 20,
    \ 'debug_window_level': 0,
    \ 'server': '0.0.0.0',
    \ 'port': 9000,
    \ 'watch_window_style' : 'expanded',
    \ 'marker_default' : '-',
    \ 'marker_closed_tree' : '▸',
    \ 'marker_open_tree' : '▾',
    \ 'sign_breakpoint' : '▷',
    \ 'sign_current' : '▶'
    \ }
let g:vdebug_features = {'extended_properties': 1}


"" BRIGHT CONDITIONS
" set background=dark
" colorscheme default


"" UltiSnips
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"


"" Python
let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'


""" Improved Search
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif

" PHP Find Implementations
function! PhpImplementations(word)
    exe 'Ack "implements.*' . a:word . '"'
endfunction

" PHP Find Subclasses
function! PhpSubclasses(word)
    exe 'Ack "extends.*' . a:word . ' *($|{)"'
endfunction

" PHP Find Usage
function! PhpUsage(word)
    exe 'Ack "::' . a:word . '\(|>' . a:word . '\("'
endfunction

noremap <leader>fi :call PhpImplementations('<cword>')<CR>
noremap <leader>fe :call PhpSubclasses('<cword>')<CR>
noremap <leader>fu :call PhpUsage('<cword>')<CR>

" Content search
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

" Search all files content
nnoremap <C-f> :Rg "<cword>"
