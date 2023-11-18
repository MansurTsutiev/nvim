---------------- Lazy Plugin Manager --------------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


require("plugins")

------------------Telescope ---------------------------------------
local builtin = require('telescope.builtin')
vim.keymap.set('n', ',f', builtin.find_files, {})
vim.keymap.set('n', ',fg', builtin.live_grep, {})
vim.keymap.set('n', ',fe', ":Telescope file_browser<CR>", { noremap = true })

require("telescope").load_extension "file_browser"
-------------------------------------------------------------------

require("config.user_settings")

-- Theme settings
vim.opt.background = 'dark'
vim.cmd('colorscheme palenight')

-- Lightline configuration
vim.g.lightline = { colorscheme = 'palenight' }

-- Airline configuration
vim.g.airline_theme = 'palenight'


-- Airline configuration
vim.g.airline_extensions_tabline_enabled = 1
vim.g.airline_extensions_tabline_formatter = 'unique_tail'
vim.g.airline_extensions_tabline_left_alt_sep = '●'
vim.g.airline_powerline_fonts = 1

-- Enable true color in Neovim TUI
if vim.fn.has('nvim') == 1 then
  vim.fn['system']('export NVIM_TUI_ENABLE_TRUE_COLOR=1')
end

-- Enable termguicolors if supported
if vim.fn.has('termguicolors') == 1 then
  vim.opt.termguicolors = true
end

vim.g.palenight_terminal_italics = 1

-- CUSTOM COMMANDS & FUNCTIONS
vim.opt.clipboard = 'unnamedplus'
-- Define custom command Cp
vim.cmd('command! Cp call system("pbcopy",@")')
-- Define custom command Kb
vim.cmd('command! Kb %bd|e#')
vim.opt.regexpengine = 1
vim.opt.showmode = false
vim.opt.synmaxcol = 200
