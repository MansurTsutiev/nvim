local plugins = {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 }, -- theme
  { "williamboman/mason.nvim" }, -- manages language servers
  { "williamboman/mason-lspconfig.nvim" }, -- bridges gap between mason and lspconfig
  { "neovim/nvim-lspconfig" }, -- sends messages from nvim to language servers
  { 'nvim-tree/nvim-tree.lua' },
  { 'nvim-tree/nvim-web-devicons' }, -- icons for nvimtree and barbar
  { 'tpope/vim-fugitive' }, -- Git commands (blame, browse)
  { 'tpope/vim-rhubarb' }, -- opens github for GBrowse
  { "numToStr/Comment.nvim" },
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

