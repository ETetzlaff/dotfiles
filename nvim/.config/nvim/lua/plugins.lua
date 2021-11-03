vim.cmd('packadd packer.nvim')

return require('packer').startup(
	function()
		use 'wbthomason/packer.nvim'

--     LSP
    use 'neovim/nvim-lspconfig'

--     Language Things
		use 'fatih/vim-go'
		use 'tpope/vim-rails'
		use 'vim-ruby/vim-ruby'
		use 'thoughtbot/vim-rspec'
		use 'robbles/logstash'
		use 'pangloss/vim-javascript'
		use 'isRuslan/vim-es6'
		use 'stephpy/vim-yaml'
		use 'uarun/vim-protobuf'


--     Utilities
		use 'flazz/vim-colorschemes'
		use 'christoomey/vim-tmux-navigator'
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
		use 'ryanoasis/vim-devicons'
		use 'diepm/vim-rest-console'
		use 'easymotion/vim-easymotion'
		use 'ervandew/supertab'
		use 'christoomey/vim-tmux-runner'
		use 'prabirshrestha/async.vim'
		use 'nvim-lua/popup.nvim'
		use 'nvim-lua/plenary.nvim'
		use 'nvim-treesitter/nvim-treesitter'
		use 'nvim-telescope/telescope.nvim'
		-- use { 'nvim-telescope/telescope.nvim',
    --   requires = { { 'nvim-lua/plenary.nvim' } }
    -- }
	end
)
