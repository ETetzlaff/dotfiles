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
-- vim.cmd("set background=dark")
vim.cmd("syntax on")

vim.cmd("colorscheme seti")
vim.cmd("highlight Normal ctermbg=None guibg=None")
vim.cmd("highlight NonText ctermbg=None guibg=None")

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
vim.cmd("autocmd BufRead,BufNewFile *.htm,*.html setlocal tabstop=2 shiftwidth=2 softtabstop=2")
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
-- Be sure to install TS go :TSInstall go
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
      -- Hover actions
      vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
    end,
  },
	inlay_hints = {
		auto = true,
		show_parameter_hints = true,
	},
})
-- broken right now
-- rt.inlay_hints.enable()

-- Obsidian plugin
require("obsidian").setup({
	dir = "~/main-vault",
	-- dir = "~/google-drive/obsidian-main-vault",
  completion = {
    nvim_cmp = true, -- if using nvim-cmp, otherwise set to false
  },
	daily_notes = {
		folder = "daily",
		date_format = "%Y-%m-%d",
		template = "daily.md", -- TODO
	},
	notes_subdir = "inbox",
	new_notes_location = "notes_subdir",
	templates = {
		folder = "templates",
		date_format = "%Y-%m-%d",
		time_format = "%H:%M",
	},
	ui = {
		enable = false,
	},
	note_id_func = function(title)
		local suffix = ""
		if title ~= nil then
			suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
		else
			for _ = 1, 4 do
				suffix = suffix .. string.char(math.random(65, 90))
			end

		end
		return tostring(os.date("%Y-%m-%d")) .. "-" .. suffix
	end,
	note_frontmatter_func = function(note)
		if note.title then
			note:add_alias(note.title)
		end
		local today = os.date("%Y-%m-%d")
		note:add_tag(today)

		local out = { id = note.id, aliases = note.aliases, tags = note.tags }

		if note.metadata ~= nil and not vim.tbl_isempty(note.metadata) then
			for k, v in pairs(note.metadata) do
				out[k] = v
			end
		end

		return out
	end,
	follow_url_func = function(url)
		vim.fn.jobstart({"open", url})
    -- vim.fn.jobstart({"xdg-open", url})  -- linux
	end,
})


-- Copilot disable by default
-- require('copilot').setup({
--   panel = {
--     enabled = true,
--     auto_refresh = false,
--     keymap = {
--       jump_prev = "[[",
--       jump_next = "]]",
--       accept = "<CR>",
--       refresh = "gr",
--       open = "<M-CR>"
--     },
--     layout = {
--       position = "bottom", | top | left | right
--       ratio = 0.4
--     },
--   },
--   suggestion = {
--     enabled = true,
--     auto_trigger = false,
--     debounce = 75,
--     keymap = {
--       accept = "<M-l>",
--       accept_word = false,
--       accept_line = false,
--       next = "<M-]>",
--       prev = "<M-[>",
--       dismiss = "<C-]>",
--     },
--   },
--   filetypes = {
--     yaml = false,
--     markdown = false,
--     help = false,
--     gitcommit = false,
--     gitrebase = false,
--     hgcommit = false,
--     svn = false,
--     cvs = false,
--     ["."] = false,
--     envrc = false,
--     env = false
--   },
--   copilot_node_command = 'node', Node.js version must be > 18.x
--   server_opts_overrides = {},
-- })

-- vim.cmd(":Copilot disable")
