vim.cmd('packadd packer.nvim')

return require('packer').startup(
	function()
		use 'wbthomason/packer.nvim'

    -- LSP
    use 'neovim/nvim-lspconfig'

    -- Language Things
		use 'fatih/vim-go'
		use 'tpope/vim-rails'
		use 'vim-ruby/vim-ruby'
		use 'thoughtbot/vim-rspec'
		use 'robbles/logstash'
		use 'pangloss/vim-javascript'
		use 'isRuslan/vim-es6'
		use 'stephpy/vim-yaml'
		use 'uarun/vim-protobuf'


    -- Utilities
		use 'flazz/vim-colorschemes'

		-- TMUX things
		use 'christoomey/vim-tmux-navigator'
		use 'christoomey/vim-tmux-runner'

		-- Snippets
		use 'honza/vim-snippets'
		use 'slim-template/vim-slim'
		use 'bronson/vim-trailing-whitespace'
		use 'Raimondi/delimitMate'
		use 'ddollar/nerdcommenter'
		use 'vim-syntastic/syntastic'
		use 'preservim/nerdtree'
		use 'airblade/vim-gitgutter'
		use 'tpope/vim-fugitive'
		use 'vim-airline/vim-airline'
		use 'diepm/vim-rest-console'
		use 'easymotion/vim-easymotion'
		use 'prabirshrestha/async.vim'

		-- NVIM Only
		-- Basic utils
		use 'nvim-lua/popup.nvim'
		use 'nvim-lua/plenary.nvim'
		use 'nvim-treesitter/nvim-treesitter'
		use 'nvim-telescope/telescope.nvim'

		use 'williamboman/nvim-lsp-installer'

		-- nvim cmp stuff
		use 'hrsh7th/nvim-cmp'
		use 'hrsh7th/cmp-buffer'
		use 'hrsh7th/cmp-path'
		use 'hrsh7th/cmp-nvim-lsp'
		use 'hrsh7th/cmp-nvim-lua'
		use 'onsails/lspkind.nvim'

		-- use 'saadparwaiz1/cmp_luasnip'

		-- Harpoon for easier maneuverability
		use 'ThePrimeagen/harpoon'

		-- LSP Function Signature
		use 'ray-x/lsp_signature.nvim'
	end
)
