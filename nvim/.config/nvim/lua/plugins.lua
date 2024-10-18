require('lazy').setup({
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  'easymotion/vim-easymotion', -- ,,w tokenizer

  require 'plugins/lsp',
  require 'plugins/treesitter',
  require 'plugins/telescope',
  require 'plugins/cmp',
  require 'plugins/neotree',
  require 'plugins/colorscheme',
  require 'plugins/tmux-navigator',
  require 'plugins/obsidian',
  require 'plugins/harpoon',
  require 'plugins/lualine',
  require 'plugins/git',
}, {
    ui = {
      -- If you are using a Nerd Font: set icons to an empty table which will use the
      -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
      icons = vim.g.have_nerd_font and {} or {
        cmd = '⌘',
        config = '🛠',
        event = '📅',
        ft = '📂',
        init = '⚙',
        keys = '🗝',
        plugin = '🔌',
        runtime = '💻',
        require = '🌙',
        source = '📄',
        start = '🚀',
        task = '📌',
        lazy = '💤 ',
      },
    },
  }
)
