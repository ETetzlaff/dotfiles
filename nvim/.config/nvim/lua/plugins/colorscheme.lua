return {
  {
    'maxmx03/solarized.nvim',
    lazy = false,
    priority = 1000,
    opts = {
      variant = 'winter',
    },
    -- config = function(_, opts)
    --   vim.o.termguicolors = true
    --   vim.cmd("hi Normal guibg='#022029'")
    --   -- vim.o.background = 'dark'

    --   require('solarized').setup(opts)
    --   vim.cmd.colorscheme 'solarized'
    -- end,
  },
  {
    'projekt0n/github-nvim-theme',
    name = 'github-theme',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    -- config = function()
    --   require('github-theme').setup({})

    --   vim.cmd('colorscheme github_dark')
    -- end,
  },
  {
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'folke/tokyonight.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      vim.cmd.colorscheme 'tokyonight-night'

      -- You can configure highlights by doing something like:
      vim.cmd.hi 'Comment gui=none'
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
