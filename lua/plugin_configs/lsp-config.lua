require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = { "lua_ls", "tsserver" },
}

local lspconfig = require('lspconfig')
lspconfig.lua_ls.setup({})
lspconfig.ts_ls.setup({}) -- this uses tsserver
vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, { noremap = true, silent = false })

