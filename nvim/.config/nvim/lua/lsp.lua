lspconfig = require("lspconfig")
lspsignature = require("lsp_signature")

lspconfig.gopls.setup{
	on_attach = function(client, bufnr)
		lspsignature.on_attach()
	end
}

lspconfig.rust_analyzer.setup{}

lspconfig.solargraph.setup{
  settings = {
    solargraph = {
      definitions = true,
      references = true,
      completion = true
    }
  }
}
