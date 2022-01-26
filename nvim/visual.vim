"Set theme to Darcula
colorscheme mustang

" Show the number of the line in the cursor instead of 0
set number

" Enables syntax highlighting
syntax on

"Set True Color for Vim
set termguicolors

"Set the status bar to appear
set laststatus=2

"Since the status bar will provide the mode, it is not necessary to display it
"anymore.
set noshowmode

" Turn on line wrapping.
set wrap                          

" Show 3 lines of context around the cursor.
set scrolloff=3                   

" Highlight current line
set cursorline

" Constrain mouse usage to Normal mode
set mouse=n

" Display color column
autocmd FileType * set colorcolumn=120
autocmd FileType gitcommit set colorcolumn=72
