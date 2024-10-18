return {
  'tpope/vim-fugitive',
  config = function()
    vim.keymap.set('n', '<leader>gs', ':Git status<CR>', { desc = '[G]it [S]tatus' })
    vim.keymap.set('n', '<leader>gb', ':Git blame<CR>', { desc = '[G]it [B]lame' })
    vim.keymap.set('n', '<leader>gd', ':Git diff<CR>', { desc = '[G]it [D]iff' })
  end
}
