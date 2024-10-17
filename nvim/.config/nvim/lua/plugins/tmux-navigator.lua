local opts = {
  noremap = true,
  silent = true,
}

return {
  'christoomey/vim-tmux-navigator',
  'christoomey/vim-tmux-runner',
  keys = {
    { 'n', '<C-J>', '<C-W><C-J>', opts },
    { 'n', '<C-K>', '<C-W><C-K>', opts },
    { 'n', '<C-L>', '<C-W><C-L>', opts },
    { 'n', '<C-H>', '<C-W><C-H>', opts },
    { 'n', '<leader>va', ':VtrAttachToPane<CR>', opts },
    { 'n', '<leader>vl', ':VtrSendLinesToRunner<CR>', opts },
  },
}
