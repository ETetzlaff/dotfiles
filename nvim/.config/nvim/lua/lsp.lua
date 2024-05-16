-- Unlocks :Mason
require("mason").setup {
    ui = {
        icons = {
            package_installed = "✓"
        }
    }
}
require("mason-lspconfig").setup {
	"lua_ls", "rust_analyzer", "gopls"
}

lspconfig = require("lspconfig")
lspsignature = require("lsp_signature")

lspconfig.gopls.setup{
	on_attach = function(client, bufnr)
		lspsignature.on_attach()
	end
}

lspconfig.lua_ls.setup{}

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
