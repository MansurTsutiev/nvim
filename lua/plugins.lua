local plugins = {
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 }, -- theme
	{ "williamboman/mason.nvim" }, -- manages language servers
	{ "williamboman/mason-lspconfig.nvim" }, -- bridges gap between mason and lspconfig
	{ "neovim/nvim-lspconfig" }, -- sends messages from nvim to language servers
	{ "stevearc/conform.nvim" }, -- formats code
	{ "nvim-tree/nvim-web-devicons" }, -- icons for nvimtree and barbar
	{ "tpope/vim-rhubarb" }, -- opens github for GBrowse
	{ "numToStr/Comment.nvim" },
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	{
		"romgrk/barbar.nvim", -- tabs ui
		dependencies = {
			"lewis6991/gitsigns.nvim", -- Git diff, blame, etc
		},
		init = function()
			vim.g.barbar_auto_setup = false
		end,
		opts = {},
		version = "^1.0.0", -- optional: only update when a new 1.x version is released
	},
	{
		"stevearc/oil.nvim",
		---@module 'oil'
		---@type oil.SetupOpts
		opts = {},
		-- Optional dependencies
		-- dependencies = { { "echasnovski/mini.icons", opts = {} } },
		-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
		-- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
		lazy = false,
	},
}

local opts = {}
require("lazy").setup(plugins, opts)
