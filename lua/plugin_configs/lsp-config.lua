-- LINTING
require("mason").setup()
require("mason-lspconfig").setup({
  automatic_enable = false,
	ensure_installed = { "lua_ls", "ts_ls", "solargraph" },
})

local lspconfig = require("lspconfig")
lspconfig.lua_ls.setup({})
lspconfig.ts_ls.setup({}) -- this uses tsserver
lspconfig.solargraph.setup({})

vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { noremap = true, silent = false })

-- FORMATTING
local conform = require("conform")

conform.setup({
	formatters_by_ft = {
		lua = { "stylua" },
		-- Conform will run the first available formatter
		javascript = { "prettierd", stop_after_first = true },
		typescript = { "prettierd", stop_after_first = true },
		javascriptreact = { "prettierd", stop_after_first = true },
		typescriptreact = { "prettierd", stop_after_first = true }, -- For TSX files
		ruby = { "rubocop" },
		eruby = { "erb_format" },
	},
})

-- autoformat on save
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		local bufname = vim.api.nvim_buf_get_name(args.buf)
		conform.format({ bufnr = args.buf })
		-- if not bufname:match("^" .. vim.fn.expand("$HOME") .. "/mi/movableink/") then
		-- 	conform.format({ bufnr = args.buf })
		-- end
	end,
})
