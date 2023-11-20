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
}


local opts = {}
require("lazy").setup(plugins, opts)

