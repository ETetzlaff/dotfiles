lspconfig = require("lspconfig")
lspsignature = require("lsp_signature")

require("nvim-lsp-installer").setup({
	automatic_installation = true,
	ui = {
    icons = {
        server_installed = "✓",
        server_pending = "➜",
        server_uninstalled = "✗"
    }
  }
})

lspconfig.gopls.setup{
	on_attach = function(client, bufnr)
		lspsignature.on_attach()
	end
}

lspconfig.sumneko_lua.setup{}

lspconfig.rust_analyzer.setup{}

-- lspconfig.solargraph.setup{
--   settings = {
--     solargraph = {
--       definitions = true,
--       references = true,
--       completion = true
--     }
--   }
-- }
