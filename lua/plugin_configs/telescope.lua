local telescope = require('telescope')

telescope.setup{
  pickers = {
    find_files = {
      theme = "dropdown",
      max_results = 100,
    },
    live_grep = {
      theme = "dropdown",
      max_results = 100,
    }
  },
  extensions = {}
}

vim.keymap.set('n', ',f', ':Telescope find_files<CR>', {})
