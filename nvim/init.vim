" vim
set number
set relativenumber
set autoindent
set noshowmode
set smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set mouse=a
set completeopt=menu,menuone,noselect

" vim-plug
call plug#begin()
	" themes
	Plug 'itchyny/lightline.vim'
	Plug 'edkolev/tmuxline.vim'
	Plug 'dracula/vim'

	" extensions
	Plug 'tpope/vim-repeat'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-commentary'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'williamboman/nvim-lsp-installer'
	Plug 'neovim/nvim-lspconfig'
	Plug 'hrsh7th/cmp-nvim-lsp'
	Plug 'hrsh7th/cmp-buffer'
	Plug 'hrsh7th/cmp-path'
	Plug 'hrsh7th/cmp-cmdline'
	Plug 'hrsh7th/nvim-cmp'
	Plug 'hrsh7th/cmp-vsnip'
	Plug 'hrsh7th/vim-vsnip'
call plug#end()

" lightline
let g:lightline = {}
let g:lightline.colorscheme = 'dracula'

" tmuxline
let g:tmuxline_powerline_separators = 0

" treesitter
lua require("treesitter")
lua require("lsp-installer")
lua require("lsp-config")
lua require("nvim-cmp")
