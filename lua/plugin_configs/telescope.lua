local telescope = require("telescope")
local builtin = require("telescope.builtin")

telescope.setup({
	defaults = {
		layout_strategy = "vertical",
		vimgrep_arguments = {
			"rg",
			"--color=never",
			"--no-heading",
			"--with-filename",
			"--line-number",
			"--column",
			"--smart-case",
			"--max-filesize",
			"1M", -- Ignore huge files
		},
	},
	pickers = {
		find_files = {
			hidden = true, -- 👈 this includes dotfiles
			previewer = false,
		},
		live_grep = {
			previewer = true,
			layout_strategy = "vertical",
		},
		git_status = {
			previewer = false, -- 👈 disables the previewer for GitStatus
		},
	},
})

require("telescope").load_extension("fzf")

vim.api.nvim_create_user_command("GitStatus", function()
	require("telescope.builtin").git_status()
end, {})

vim.keymap.set("n", "<leader>f", builtin.find_files, {})
vim.keymap.set("n", "<leader>g", builtin.live_grep, {})
vim.keymap.set("n", "<leader>gs", "<cmd>GitStatus<CR>")
