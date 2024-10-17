-- Nerd Font
vim.g.nerd_font = true

-- Line number
vim.opt.number = true

-- Mouse mode for split resize
vim.opt.mouse = 'a'

-- Don't show mode since it'll be in status line
vim.opt.showmode = false

-- Sync clipboard for OS and nvim
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

-- Break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case insensitive searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Sign column on
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence time
vim.opt.timeoutlen = 300

-- Split opening config
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Whitespace
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitution
vim.opt.inccommand = 'split'

-- Line for cursor
vim.opt.cursorline =  true

-- Minimum number of lines to show above and below cursor
vim.opt.scrolloff = 10

-- Relative line numbers
vim.opt.relativenumber = true

-- Ruler
vim.opt.ruler = true
