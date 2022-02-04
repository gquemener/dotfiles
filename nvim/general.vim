"Remove compatibility with vi.
set nocompatible
" Add find in subdirectories
set path+=**
" Necessary to allow LSP to make modifications in several files
set hidden

" Load filetype-specific indent files
filetype indent on

"Add autocompletion using tab for commands.
set wildmenu

"---- Search configurations ----
"Incremental search enabled
set incsearch

"Highlight matches as we type
set hlsearch

"Ignore case for searches
set ignorecase

"Enable smart case detection
set smartcase

"---------- Tabs as spaces -------------------
set expandtab
set smarttab
set softtabstop=0
set tabstop=8
set shiftwidth=4

" --------- Reminder to use folders
set foldlevelstart=1

" ----- Treesitter folding
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()

" Reduce timeout len in order to display keybindings help
set timeoutlen=500

set clipboard+=unnamedplus

autocmd BufWrite * :call <SID>MkdirsIfNotExists(expand('<afile>:h'))

function! <SID>MkdirsIfNotExists(directory)
    if(!isdirectory(a:directory))
        call system('mkdir -p '.shellescape(a:directory))
    endif
endfunction
