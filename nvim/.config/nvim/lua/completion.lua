vim.opt.completeopt = { "menu", "menuone", "noselect" }

vim.opt.shortmess:append "c"

local ok, lspkind = pcall(require, "lspkind")
if not ok then
  return
end

lspkind.init()

local cmp = require "cmp"

cmp.setup {
  mapping = {
    ["<C-n>"] = cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Insert },
    ["<C-p>"] = cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Insert },
    ["<C-d>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-e>"] = cmp.mapping.abort(),
    ["<c-y>"] = cmp.mapping(
      cmp.mapping.confirm {
        behavior = cmp.ConfirmBehavior.Insert,
        select = true,
      },
      { "i", "c" }
    ),
		-- what is preventing space from working on this?
		-- ["<c-space>"] = cmp.mapping.complete(),
		["<C-q>"] = cmp.mapping.complete(),

		-- run this for more help on getting away from tab complete
		-- :help ins-completion
    ["<tab>"] = cmp.config.disable,
	},

  sources = {
    { name = "nvim_lsp" },
    { name = "path" },
    { name = "nvim_lua" },
    { name = "buffer", keyword_length = 3 },
  },


	formatting = {
		format = lspkind.cmp_format {
			with_text = true,
			menu = {
				buffer = "[buf]",
				nvim_lsp = "[LSP]",
				nvim_lua = "[api]",
				path = "[path]",
			},
		},
	},

  experimental = {
    ghost_text = true,
  },
}
