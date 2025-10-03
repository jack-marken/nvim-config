-- Mason setup
require("mason").setup()

-- Mason-LSPConfig setup
require("mason-lspconfig").setup({
	dependencies = { "neovim/nvim-lspconfig" },
	ensure_installed = {
		"stylua",
	},
	automatic_installation = true,
})

-- Conform setup (formatters)
require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		-- javascript = { "prettier" },
		-- javascriptreact = { "prettier" },
		-- typescript = { "prettier" },
		-- python = { "black" },
	},
	format_on_save = {
		lsp_fallback = true, -- Use LSP formatting if conform has no formatter for the filetype
		async = false,
		timeout_ms = 1000,
	},
})

vim.lsp.enable("stylua")

vim.diagnostic.config({
	virtual_text = { current_line = true },
	virtual_lines == false,
	-- virtual_lines = { current_line = true },
})
