-- Mason setup
require("mason").setup()

-- Mason-LSPConfig setup
require("mason-lspconfig").setup({
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

vim.lsp.config("stylua", {
	cmd = { "stylua" },
	filetypes = { "lua" },
	root_markers = { ".luarc.json", ".git", vim.uv.cwd() },
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})

vim.lsp.enable("stylua")

vim.diagnostic.config({
	virtual_text = { current_line = true },
	virtual_lines = false,
	-- virtual_lines = { current_line = true },
})

----------------------
-- LSP setup
----------------------
-- StyLua
-- vim.lsp.config["stylua"] = {
-- 	root_markers = { ".luarc.json", ".git", vim.uv.cwd() },
-- 	settings = {
-- 		Lua = {
-- 			diagnostics = {
-- 				globals = { "vim" },
-- 			},
-- 			telemetry = {
-- 				enable = false,
-- 			},
-- 		},
-- 	},
-- }

-- vim.lsp.config["ts_ls"] = {}

-- -- ESLint
-- vim.lsp.config["eslint"] = {
-- 	cmd = { "vscode-eslint-language-server" },
-- 	filetypes = {
-- 		"javascript",
-- 		"javascriptreact",
-- 		"javascript.jsx",
-- 		"typescript",
-- 		"typescriptreact",
-- 		"typescript.tsx",
-- 	},
-- 	root_markers = {
-- 		"tsconfig.json",
-- 		"jsconfig.json",
-- 		"package.json",
-- 		".git",
-- 	},
-- }

-- -- Pyright
-- vim.lsp.config["pyright"] = {
-- 	cmd = { "pyright" },
-- 	filetypes = { "py", "python" },
-- }

-- -- vim.lsp.enable("stylua")
-- -- vim.lsp.enable("eslint")
-- -- vim.lsp.enable("pyright")

-- -- Neovim's built-in completion API
-- -- vim.api.nvim_create_autocmd('LspAttach', {
-- --   callback = function(ev)
-- --     local client = vim.lsp.get_client_by_id(ev.data.client_id)
-- --     if client:supports_method('textDocument/completion') then
-- --       vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
-- --     end
-- --   end,
-- -- })
-- -- vim.cmd("set completeopt+=noselect"); -- Turn off annoying autocomplete
