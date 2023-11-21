local plugins = {
    'nvim-tree/nvim-web-devicons',
    'drewtempelmeyer/palenight.vim',
    'tpope/vim-fugitive',
    'joukevandermaas/vim-ember-hbs',
    'tpope/vim-rhubarb',
    'vim-airline/vim-airline',
    'akinsho/bufferline.nvim',
    'stevearc/conform.nvim',
    "numToStr/Comment.nvim",
    { "lukas-reineke/indent-blankline.nvim", main = "ibl" },
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    {
      'nvim-telescope/telescope.nvim', tag = '0.1.4',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
      "nvim-telescope/telescope-file-browser.nvim",
      dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    },
    "hrsh7th/nvim-cmp", -- completion plugin
    "hrsh7th/cmp-buffer", -- source for text in buffer
    "hrsh7th/cmp-path",   -- source for file system paths
    "hrsh7th/cmp-nvim-lsp", -- auto imports 
    "hrsh7th/cmp-cmdline",  -- autocomplete for :vim_commands
    "L3MON4D3/LuaSnip", -- snippet engine
    "saadparwaiz1/cmp_luasnip", -- LuaSnip completion source
    "rafamadriz/friendly-snippets", -- useful snippets
  }


local opts = {}
require("lazy").setup(plugins, opts)

