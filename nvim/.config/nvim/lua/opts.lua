vim.g.mapleader = ","

vim.cmd("language en_US.utf-8")
vim.cmd("filetype off")
vim.cmd("filetype plugin indent on")
vim.cmd("syntax on")
vim.cmd("set noswapfile")
vim.cmd("set nocompatible")

vim.o.ruler = true
vim.o.relativenumber = true

vim.wo.number = true
vim.wo.signcolumn = "number"
vim.wo.wrap = false

vim.cmd("set mouse=a")
vim.cmd("set t_Co=256")
vim.cmd("set clipboard=unnamed")
vim.cmd("set background=dark")
vim.cmd("syntax on")

vim.cmd("colorscheme seti")
vim.cmd("highlight Normal ctermbg=None")

local opts = {
	noremap = true,
	silent = true
}


-- Airline things
vim.cmd("set encoding=utf8")
vim.cmd("let g:airline_powerline_fonts = 1")
vim.cmd("let g:airline#extensions#tabline#enabled = 1")
vim.cmd("let g:airline#extensions#tabline#show_tab_nr = 1")
vim.cmd("let g:airline#extensions#tabline#show_splits = 0")
vim.cmd("let g:airline#extensions#tabline#buffer_idx_mode = 1")

-- Filetypes
vim.cmd("autocmd Filetype ruby setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2")
vim.cmd("autocmd Filetype html setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2")
vim.cmd("autocmd Filetype eruby setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2")
vim.cmd("autocmd Filetype slim setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2")
vim.cmd("autocmd Filetype coffee setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2")
vim.cmd("autocmd FileType go setlocal noexpandtab shiftwidth=4 tabstop=4 autoindent")
vim.cmd("autocmd Filetype javascript setlocal tabstop=2 softtabstop=2 expandtab smarttab shiftwidth=2")
vim.cmd("autocmd Filetype rest setlocal tabstop=2 shiftwidth=2 softtabstop=2")
vim.cmd("autocmd Filetype conf setlocal tabstop=2 shiftwidth=2 softtabstop=2")
vim.cmd("autocmd Filetype json setlocal tabstop=2 shiftwidth=2 softtabstop=2")
vim.cmd("autocmd Filetype vimwiki setlocal tabstop=2 shiftwidth=2 softtabstop=2")
vim.cmd("autocmd Filetype lua setlocal tabstop=2 shiftwidth=2 softtabstop=2")

-- JSON Formatter with Python Support
vim.cmd("let g:python_host_prog = \"/usr/bin/python2.7\"")
vim.cmd("com! FormatJSON %!python -m json.tool")


-- Go Things
require("go").setup()
-- Use the vim.api since goimport() through go.format adds a full second to startup for some reason.
vim.api.nvim_exec([[ autocmd BufWritePre *.go :silent! lua require('go.format').goimport() ]], false)
-- require("go.format").goimport()

-- Rust Things
vim.cmd("let g:rustfmt_autosave = 1")
local rt = require("rust-tools")
rt.setup({
	server = {
  	on_attach = function(_, bufnr)
  		vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
  		vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
  	end,
  },
})
rt.inlay_hints.enable()
