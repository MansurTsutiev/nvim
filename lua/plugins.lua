local plugins = {
    'nvim-tree/nvim-tree.lua',
    'nvim-tree/nvim-web-devicons', -- icons for nvimtree and barbar
    'drewtempelmeyer/palenight.vim',
    'tpope/vim-fugitive',
    'tpope/vim-rhubarb',
    "numToStr/Comment.nvim",
    {
      'nvim-telescope/telescope.nvim', tag = '0.1.6',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {'romgrk/barbar.nvim', -- tabs ui
      dependencies = {
        'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      },
      init = function() vim.g.barbar_auto_setup = false end,
      opts = {},
      version = '^1.0.0', -- optional: only update when a new 1.x version is released
    },
}


local opts = {}
require("lazy").setup(plugins, opts)

