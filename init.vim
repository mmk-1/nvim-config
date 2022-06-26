set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set nohlsearch
set ignorecase
set smartcase
set nowrap
set splitbelow
set splitright
set hidden
set scrolloff=999
set noshowmode
set updatetime=250 
set encoding=UTF-8
set mouse=a


call plug#begin('~/.config/nvim/plugged')

Plug 'neovim/nvim-lspconfig'
Plug 'sainnhe/everforest'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'akinsho/toggleterm.nvim'
Plug 'kyazdani42/nvim-tree.lua'

call plug#end()

lua require('config')

set background=dark
colorscheme everforest
