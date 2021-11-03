-- lsp = require('nvim_lsp')
-- 
-- lsp.gopls.setup{}
-- 
-- lsp.solargraph.setup{
--   settings = {
--     solargraph = {
--       definitions = true,
--       references = true,
--       completion = true
--     }
--   }
-- }

-- lsp.sumneko.setup{}
--
lspconfig = require('lspconfig')
lspconfig.gopls.setup{}

lspconfig.solargraph.setup{
  settings = {
    solargraph = {
      definitions = true,
      references = true,
      completion = true
    }
  }
}
