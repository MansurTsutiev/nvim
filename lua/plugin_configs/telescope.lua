local telescope = require('telescope')

telescope.setup{
  pickers = {
    find_files = {
      theme = "dropdown",
      max_results = 100,

    }
  },
  extensions = {}
}

