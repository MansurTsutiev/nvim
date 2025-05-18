local telescope = require("telescope")
local builtin = require("telescope.builtin")

telescope.setup({
	defaults = {
		layout_strategy = "vertical",
		layout_config = { height = 0.95 },
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
			previewer = false,
			sorting_strategy = "ascending",
			prompt_position = "top",
			layout_config = { prompt_position = "top" },
		},
		live_grep = {
			layout_strategy = "vertical",
			layout_config = {
				prompt_position = "top", -- Search bar at the top
				preview_height = 0.5, -- Preview window takes 50% of the height at the bottom
				mirror = true, -- This flips the layout to put the preview at the bottom
			},
			sorting_strategy = "ascending", -- Results start just below the prompt
		},
	},
	extensions = {
		fzf = {
			fuzzy = true,
			override_generic_sorter = true,
			override_file_sorter = true,
			case_mode = "smart_case",
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
