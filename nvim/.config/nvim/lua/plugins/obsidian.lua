-- Obsidian and WIKI plugins

local opts = {
  noremap = true,
  silent = true
}

-- Obsidian
vim.keymap.set("n", "<leader>os", ":ObsidianSearch<CR>", opts)
vim.keymap.set("n", "<leader>osb", ":ObsidianBacklinks<CR>", opts)
vim.keymap.set("n", "<leader>ost", ":ObsidianToday<CR>", opts)
vim.keymap.set("n", "<leader>osy", ":ObsidianYesterday<CR>", opts)
vim.keymap.set("n", "<leader>osn", ":ObsidianNew<CR>", opts)
vim.keymap.set("n", "<leader>ok", ":!mv '%:p' /home/reuh/main-vault/permanent<cr>:bd<cr>")
vim.keymap.set("n", "<leader>odd", ":!rm '%:p'<cr>:bd<cr>")

return {
  {
    'ixru/nvim-markdown',
  },
  {
    'iamcco/markdown-preview.nvim',
  },
  {
    'epwalsh/obsidian.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
    },
    config = function()
      require('obsidian').setup({
        workspaces = {
          {
            name = 'personal',
            path = '~/vaults/personal',
          },
        },
      })
    end,
  },
}
