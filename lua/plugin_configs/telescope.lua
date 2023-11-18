------------------Telescope ---------------------------------------
local builtin = require('telescope.builtin')
vim.keymap.set('n', ',f', builtin.find_files, {})
vim.keymap.set('n', ',fg', builtin.live_grep, {})
vim.keymap.set('n', ',fe', ":Telescope file_browser<CR>", { noremap = true })

require("telescope").load_extension "file_browser"
