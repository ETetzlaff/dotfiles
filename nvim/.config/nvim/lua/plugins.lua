vim.cmd("packadd packer.nvim")

return require("packer").startup(
	function()
		use "wbthomason/packer.nvim"

    -- LSP
		use "williamboman/mason.nvim"
		use "williamboman/mason-lspconfig.nvim"
    use "neovim/nvim-lspconfig"

    -- Language Things
		use "pangloss/vim-javascript"
		use "isRuslan/vim-es6"
		use "stephpy/vim-yaml"
		use "hashivim/vim-terraform"
		use "uarun/vim-protobuf"
		use 'leafgarland/typescript-vim'
		use 'evanleck/vim-svelte'


    -- Utilities
		use "flazz/vim-colorschemes"

		-- TMUX things
		use "christoomey/vim-tmux-navigator"
		use "christoomey/vim-tmux-runner"

		-- Snippets
		use "honza/vim-snippets"
		use "slim-template/vim-slim"
		use "bronson/vim-trailing-whitespace"
		use "Raimondi/delimitMate"
		use "ddollar/nerdcommenter"
		use "vim-syntastic/syntastic"
		use "preservim/nerdtree"
		-- use "airblade/vim-gitgutter"
		use "tpope/vim-fugitive"
		use "vim-airline/vim-airline"
		use "diepm/vim-rest-console"
		use "easymotion/vim-easymotion"
		use "prabirshrestha/async.vim"

		-- NVIM Only
		-- Basic utils
		use "nvim-lua/popup.nvim"
		use "nvim-lua/plenary.nvim"
		use "nvim-treesitter/nvim-treesitter"
		use "nvim-telescope/telescope.nvim"

		use "ibhagwan/nvim-lua"

		-- nvim cmp stuff
		use "hrsh7th/nvim-cmp"
		use "hrsh7th/cmp-buffer"
		use "hrsh7th/cmp-path"
		use "hrsh7th/cmp-nvim-lsp"
		use "hrsh7th/cmp-nvim-lua"
		use "onsails/lspkind.nvim"

		-- use "saadparwaiz1/cmp_luasnip"

		-- Harpoon for easier maneuverability
		use "ThePrimeagen/harpoon"

		-- LSP Function Signature
		use "ray-x/lsp_signature.nvim"

		use "ray-x/go.nvim"

		-- Rust
    use "rust-lang/rust.vim"
		use "simrat39/rust-tools.nvim"

		-- Wiki
		-- use "vimwiki/vimwiki"
		use "ixru/nvim-markdown"
		use "epwalsh/obsidian.nvim"
		use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "vimwiki", "markdown" } end, ft = { "markdown" }, })

		-- Copilot
		-- use "zbirenbaum/copilot.lua"

	end
)
