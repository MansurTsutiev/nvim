vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
	sort = {
		sorter = "case_sensitive",
	},
	view = {
		width = 40,
	},
	filters = {
		dotfiles = false,
	},
	update_focused_file = {
		enable = true,
		exclude = false,
		update_root = {
			enable = true,
			ignore_list = {},
		},
	},
})

-- Set the color for folder names
vim.api.nvim_set_hl(0, "NvimTreeFolderName", { fg = "#61afef" })

-- Set the color for open folder names
vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderName", { fg = "#98c379" })

-- Set the color for the root folder name
vim.api.nvim_set_hl(0, "NvimTreeRootFolder", { fg = "#61afef" })
