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
    file_browser = {
      theme = "dropdown",
      hijack_netrw = true, -- disabled native nvim file explorer
    }
  }
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', ',f', builtin.find_files, {})
vim.keymap.set('n', ',fg', builtin.live_grep, {})
vim.keymap.set('n', ',fe', ":Telescope file_browser<CR>", { noremap = true })


telescope.load_extension "file_browser"
telescope.load_extension('fzf')

