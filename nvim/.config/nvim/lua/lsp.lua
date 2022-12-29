-- Unlocks :Mason
mason = require("mason").setup()
mason_config = require("mason-lspconfig").setup {
	"sumneko_lua", "rust_analyzer", "gopls"
}

lspconfig = require("lspconfig")
lspsignature = require("lsp_signature")

lspconfig.gopls.setup{
	on_attach = function(client, bufnr)
		lspsignature.on_attach()
	end
}

lspconfig.sumneko_lua.setup{}

lspconfig.rust_analyzer.setup{}

lspconfig.pylsp.setup{
	settings = {
		pylsp = {
			plugins = {
				pycodestyle = {
					maxLineLength = 120,
				}
			}
		}
	}
}
