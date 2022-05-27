local opts = {
  noremap = true,
  silent = true
}

vim.api.nvim_set_keymap('t', '<leader>gs', 'Gstatus<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>wq', ':wq<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', opts)

vim.api.nvim_set_keymap('n', '<leader>gs', ':Git status<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>gb', ':Git blame<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>gd', ':Git diff<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>n', ':NERDTree<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>wq', ':wq<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>bd', ':bd<CR>', opts)
vim.api.nvim_set_keymap('n', '<C-J>', '<C-W><C-J>', opts)
vim.api.nvim_set_keymap('n', '<C-K>', '<C-W><C-K>', opts)
vim.api.nvim_set_keymap('n', '<C-L>', '<C-W><C-L>', opts)
vim.api.nvim_set_keymap('n', '<C-H>', '<C-W><C-H>', opts)
vim.api.nvim_set_keymap('n', '<silent>', '<BS> :TmuxNavigateLeft<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>gr', ':GoRun<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>gt', ':GoTest<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>god', ':GoDef<CR>', opts)

-- Telescope
vim.api.nvim_set_keymap('n', '<C-p>', ':Telescope find_files<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>tg', ':Telescope live_grep<CR>', opts)

-- Airline
vim.api.nvim_set_keymap('n', '<leader>1', '<Plug>AirlineSelectTab1', opts)
vim.api.nvim_set_keymap('n', '<leader>2', '<Plug>AirlineSelectTab2', opts)
vim.api.nvim_set_keymap('n', '<leader>3', '<Plug>AirlineSelectTab3', opts)
vim.api.nvim_set_keymap('n', '<leader>4', '<Plug>AirlineSelectTab4', opts)
vim.api.nvim_set_keymap('n', '<leader>5', '<Plug>AirlineSelectTab5', opts)
vim.api.nvim_set_keymap('n', '<leader>6', '<Plug>AirlineSelectTab6', opts)
vim.api.nvim_set_keymap('n', '<leader>7', '<Plug>AirlineSelectTab7', opts)
vim.api.nvim_set_keymap('n', '<leader>8', '<Plug>AirlineSelectTab8', opts)
vim.api.nvim_set_keymap('n', '<leader>9', '<Plug>AirlineSelectTab9', opts)
vim.api.nvim_set_keymap('n', '<leader>[', '<Plug>AirlineSelectPrevTab', opts)
vim.api.nvim_set_keymap('n', '<leader>]', '<Plug>AirlineSelectNextTab', opts)
vim.cmd('nmap <leader>1 <Plug>AirlineSelectTab1')
vim.cmd('nmap <leader>2 <Plug>AirlineSelectTab2')
vim.cmd('nmap <leader>3 <Plug>AirlineSelectTab3')
vim.cmd('nmap <leader>4 <Plug>AirlineSelectTab4')
vim.cmd('nmap <leader>5 <Plug>AirlineSelectTab5')
vim.cmd('nmap <leader>6 <Plug>AirlineSelectTab6')
vim.cmd('nmap <leader>7 <Plug>AirlineSelectTab7')
vim.cmd('nmap <leader>8 <Plug>AirlineSelectTab8')
vim.cmd('nmap <leader>9 <Plug>AirlineSelectTab9')
vim.cmd('nmap <leader>[ <Plug>AirlineSelectPrevTab')
vim.cmd('nmap <leader>] <Plug>AirlineSelectNextTab')

-- Vim Tmux Runner
vim.api.nvim_set_keymap('n', '<leader>va', ':VtrAttachToPane<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>vl', ':VtrSendLinesToRunner<cr>', opts)
vim.api.nvim_set_keymap('v', '<leader>vl', ':VtrSendLinesToRunner<cr>', opts)

-- LSP
vim.api.nvim_set_keymap('n', '<leader>ld', ':lua vim.lsp.buf.definition()<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>lr', ':lua vim.lsp.buf.references()<CR>', opts)

-- Rspec
vim.api.nvim_set_keymap('n', '<leader>rs', ':call RunNearestSpec()<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>rf', ':call RunCurrentSpecFile()<CR>', opts)

-- Harpooning - This might kill Airline for me
vim.api.nvim_set_keymap('n', '<leader>ha', ':lua require("harpoon.mark").add_file()<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>h1', ':lua require("harpoon.ui").nav_file(1)<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>h2', ':lua require("harpoon.ui").nav_file(2)<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>h3', ':lua require("harpoon.ui").nav_file(3)<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>hq', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', opts)
