local telescope = require('telescope')

telescope.setup{
  pickers = {
    find_files = {
      theme = "dropdown",
      max_results = 100,

    }
  },
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    },
  }
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', ',f', builtin.find_files, {})
vim.keymap.set('n', ',fg', builtin.live_grep, {})


telescope.load_extension('fzf')

