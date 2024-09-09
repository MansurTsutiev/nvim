local telescope = require("telescope")

telescope.setup({})

vim.keymap.set("n", ",f", ":Telescope find_files<CR>", {})
