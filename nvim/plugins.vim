call plug#begin(stdpath('data') . '/plugged')

" snippets
Plug 'SirVer/ultisnips'

" Git integration
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" File navigation
Plug 'sjbach/lusty'

" statusline
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'

" LSP
"Plug 'neovim/nvim-lspconfig'
"Plug 'williamboman/nvim-lsp-installer'
Plug 'kosayoda/nvim-lightbulb'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Kotlin
Plug 'udalov/kotlin-vim'

" Misc
Plug 'editorconfig/editorconfig-vim'
Plug 'mileszs/ack.vim'

" GraphQL
Plug 'jparise/vim-graphql'

" Vue
Plug 'posva/vim-vue'

call plug#end()
