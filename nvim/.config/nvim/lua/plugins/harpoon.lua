local opts = {
  noremap = true,
  silent = true,
}

return {
  'ThePrimeagen/harpoon',
  config = function()
    require('harpoon').setup({})
    vim.api.nvim_set_keymap("n", "<leader>ha", ":lua require(\"harpoon.mark\").add_file()<CR>", opts)
    vim.api.nvim_set_keymap("n", "<leader>h1", ":lua require(\"harpoon.ui\").nav_file(1)<CR>", opts)
    vim.api.nvim_set_keymap("n", "<leader>h2", ":lua require(\"harpoon.ui\").nav_file(2)<CR>", opts)
    vim.api.nvim_set_keymap("n", "<leader>h3", ":lua require(\"harpoon.ui\").nav_file(3)<CR>", opts)
    vim.api.nvim_set_keymap("n", "<leader>hq", ":lua require(\"harpoon.ui\").toggle_quick_menu()<CR>", opts)
  end,
}
