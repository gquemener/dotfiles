"
" Vundle Configuration
"
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim/
set rtp+=~/.vim/doc/
call vundle#rc()

Plugin 'gmarik/Vundle.vim'

Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'beyondwords/vim-twig'
Plugin 'derekwyatt/vim-scala'
Plugin 'docteurklein/php-getter-setter.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'edkolev/tmuxline.vim'
Plugin 'gerw/vim-HiLinkTrace'
Plugin 'godlygeek/tabular'
Plugin 'gregsexton/MatchTag'
Plugin 'groenewege/vim-less'
Plugin 'Herzult/phpspec-vim'
Plugin 'honza/vim-snippets'
Plugin 'itchyny/lightline.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'joonty/vdebug'
Plugin 'kien/ctrlp.vim'
Plugin 'nelstrom/vim-markdown-folding'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'rodjek/vim-puppet'
Plugin 'scrooloose/syntastic'
Plugin 'SirVer/ultisnips'
Plugin 'sjbach/lusty'
Plugin 'stephpy/vim-yaml'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-ragtag'
Plugin 'veloce/vim-behat'
Plugin 'vim-scripts/ack.vim'
Plugin 'vim-scripts/Rename'
Plugin 'yurifury/hexHighlight'
Plugin 'elixir-lang/vim-elixir'
Plugin 'leafgarland/typescript-vim'

"
" General configuration
"
scriptencoding utf-8
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

set expandtab                    " Use spaces instead of tabs
set autoindent
set smartindent
set nolist
set mouse=n

set cursorline

set tags=tags,vendor.tags,pear.tags,local.tags
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
            \ 'active_filetypes': [],
            \ 'passive_filetypes': ['ruby', 'php', 'css', 'scss', 'html'] }
let g:syntastic_error_symbol   = '✗'
let g:syntastic_warning_symbol = '⚠'

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
nmap <leader>f :grep -Rn "<C-r><C-w>"
" do a grep search on the selected text
vmap <leader>f y:grep -Rn "<C-r>"
" adds the grep result to the args list to perform mass edit operation
nmap <leader>a :args `grep -Rl \"<C-r><C-w>\" src/`


let g:ctrlp_cmd = 'CtrlPMRU'
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g "" -u'
endif

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
    \     'readonly': '%{&readonly?"⚷":""}',
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

"let g:vdebug_options = {'debug_file': '', 'debug_file_level': 0, 'watch_window_style': 'expanded', 'marker_default': '⬦', 'continuous_mode': 0, 'ide_key': 'vim_session', 'break_on_open': 1, 'on_close': 'detach', 'path_maps': {"/data/www": "/home/gildas/projects/1001cine-movie-upload"}, 'marker_closed_tree': '▸', 'timeout': 20, 'port': 9000, 'marker_open_tree': '▾', 'debug_window_level': 0, 'server': '127.0.0.1'}
"let g:vdebug_options = {'debug_file': '', 'debug_file_level': 0, 'watch_window_style': 'expanded', 'marker_default': '⬦', 'continuous_mode': 0, 'ide_key': 'vim_session', 'break_on_open': 1, 'on_close': 'detach', 'path_maps': {"/data/www": "/home/gildas/projects/1001cine"}, 'marker_closed_tree': '▸', 'timeout': 20, 'port': 9000, 'marker_open_tree': '▾', 'debug_window_level': 0, 'server': '0.0.0.0'}
"let g:vdebug_options = {'debug_file': '', 'debug_file_level': 0, 'watch_window_style': 'expanded', 'marker_default': '⬦', 'continuous_mode': 0, 'ide_key': 'vim_session', 'break_on_open': 1, 'on_close': 'detach', 'path_maps': {"/data/www": "/home/gildas/projects/lestaff"}, 'marker_closed_tree': '▸', 'timeout': 20, 'port': 9000, 'marker_open_tree': '▾', 'debug_window_level': 0, 'server': '0.0.0.0'}
"let g:vdebug_options = {'debug_file': '', 'debug_file_level': 0, 'watch_window_style': 'expanded', 'marker_default': '⬦', 'continuous_mode': 0, 'ide_key': 'vim_session', 'break_on_open': 1, 'on_close': 'detach', 'path_maps': {}, 'marker_closed_tree': '▸', 'timeout': 20, 'port': 9000, 'marker_open_tree': '▾', 'debug_window_level': 0, 'server': '0.0.0.0'}
let g:vdebug_options = {'debug_file': '', 'debug_file_level': 0, 'watch_window_style': 'expanded', 'marker_default': '⬦', 'continuous_mode': 0, 'ide_key': 'vim_session', 'break_on_open': 1, 'on_close': 'detach', 'path_maps': {"/data/www": "/home/gildas/projects/MoovTime-API"}, 'marker_closed_tree': '▸', 'timeout': 20, 'port': 9000, 'marker_open_tree': '▾', 'debug_window_level': 0, 'server': '0.0.0.0'}
"let g:vdebug_options = {'debug_file': '', 'debug_file_level': 0, 'watch_window_style': 'expanded', 'marker_default': '⬦', 'continuous_mode': 0, 'ide_key': 'vim_session', 'break_on_open': 1, 'on_close': 'detach', 'path_maps': {"/data/www": "/home/gildas/projects/MoovTime-Back-Office"}, 'marker_closed_tree': '▸', 'timeout': 20, 'port': 9000, 'marker_open_tree': '▾', 'debug_window_level': 0, 'server': '0.0.0.0'}


"" BRIGHT CONDITIONS
" set background=dark
" colorscheme default
