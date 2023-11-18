-- nvim configuration:
vim.g.mapleader = ","
vim.cmd('syntax enable')
vim.cmd('set autoindent')
vim.cmd('set expandtab')
vim.cmd('set shiftwidth=2')
vim.cmd('set softtabstop=2')
vim.cmd('set tabstop=2')
vim.cmd('set autoread')
vim.cmd('set ignorecase')
vim.cmd('set splitbelow')
vim.cmd('set number')
vim.cmd('set splitright')
vim.cmd('set mouse=a')
vim.cmd('set spell spelllang=en_us')
vim.cmd('set hlsearch')
vim.cmd('hi clear SpellBad')
vim.cmd('hi SpellBad cterm=underline')
vim.cmd('hi Search ctermbg=LightYellow')
vim.cmd('hi Search ctermfg=Red')
vim.cmd('set statusline=')
vim.cmd('set wrap linebreak nolist')
vim.cmd('set nofixeol')

-- Custom mappings
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>sv', ':source $MYVIMRC<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<leader>r', ':vertical resize +20<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<leader>rr', ':vertical resize -20<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<leader>v', ':resize +10<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<leader>vv', ':resize -10<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<leader>ns', ':set nospell<CR>', { silent = true })
vim.api.nvim_set_keymap('n', 'ss', 'i<Space><Esc>', {})
vim.api.nvim_set_keymap('n', '<Tab>', ':bnext<CR>', {})
vim.api.nvim_set_keymap('n', '<S-Tab>', ':bprevious<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>s', ':%s/\\<<C-r><C-w>\\>/', {})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-W>j', {})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-W>k', {})
vim.api.nvim_set_keymap('n', '<C-h>', '<C-W>h', {})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-W>l', {})
vim.api.nvim_set_keymap('n', '<leader>gb', ':Git blame<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<leader>x', ':x<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<leader>z', '<C-z>', {})
vim.api.nvim_set_keymap('n', '<leader><c-u>', 'viwU', {})
vim.api.nvim_set_keymap('n', '<leader>ev', ':split ~/.config/nvim/init.vim<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<leader>td', ':split ~/.mans_box/todo.md<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<leader>es', ':source $MYVIMRC<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<leader>q', 'viw<Esc>a"<Esc>bi"<Esc>lel', {})
vim.api.nvim_set_keymap('n', '<leader>qq', 'viw<Esc>lxbhxe', {})
vim.api.nvim_set_keymap('v', '<leader>q', '<ESC>`>a"<ESC>`<i"<ESC>', {})
vim.api.nvim_set_keymap('n', 'H', '^', {})
vim.api.nvim_set_keymap('n', 'L', '$', {})
vim.api.nvim_set_keymap('o', 'p', 'i(', {})

-- Custom abbreviations
vim.api.nvim_set_keymap('i', 'raa', 'return assert.async();', { noremap = true, expr = false, silent = true })
vim.api.nvim_set_keymap('i', 'bp', 'binding.pry', { noremap = true, expr = false, silent = true })
vim.api.nvim_set_keymap('i', 'bb', 'binding.break', { noremap = true, expr = false, silent = true })
vim.api.nvim_set_keymap('i', 'vv', '✔', { noremap = true, expr = false, silent = true })
vim.api.nvim_set_keymap('i', 'cc', '●', { noremap = true, expr = false, silent = true })
vim.api.nvim_set_keymap('i', 'nn', '★', { noremap = true, expr = false, silent = true })
vim.api.nvim_set_keymap('i', 'erb', '<% %>', { noremap = true, expr = false, silent = true })
vim.api.nvim_set_keymap('i', 'erbb', '<%= %>', { noremap = true, expr = false, silent = true })



-- Theme settings
vim.opt.background = 'dark'

-- Enable true color in Neovim TUI
if vim.fn.has('nvim') == 1 then
  vim.fn['system']('export NVIM_TUI_ENABLE_TRUE_COLOR=1')
end

-- Enable termguicolors if supported
if vim.fn.has('termguicolors') == 1 then
  vim.opt.termguicolors = true
end

-- CUSTOM COMMANDS & FUNCTIONS
vim.opt.clipboard = 'unnamedplus'
-- Define custom command Cp
vim.cmd('command! Cp call system("pbcopy",@")')
-- Define custom command Kb
vim.cmd('command! Kb %bd|e#')
vim.opt.regexpengine = 1
vim.opt.showmode = false
vim.opt.synmaxcol = 200
