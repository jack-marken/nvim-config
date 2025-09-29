require("mason").setup();
require("mason-lspconfig").setup({
	ensure_installed = {
		'eslint',
	}
})

-- Pyright
vim.lsp.config["pyright"] = {
	cmd = { "pyright" },
	filetypes = { "py", "python" },
};
vim.lsp.enable("pyright");

-- ESLint
vim.lsp.config["eslint-lsp"] = {
	cmd = { "eslint" },
	filetypes = {
		"js", "cjs", "mjs", "jsx", "tsx",
	},
	root_markers = {
		'.eslintrc.js', '.eslintrc.cjs', '.eslint.config.js'
	},
};
vim.lsp.enable("eslint-lsp");

-- Lua Language Server
vim.lsp.config["luals"] = {
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
	root_markers = { { '.luarc.json', '.luarc.jsonc' }, '.git' },
	settings = {
    Lua = {
			diagnostics = {
				globals = { "vim" },
			},
      runtime = {
        version = 'LuaJIT',
      }
    }
  }
};
vim.lsp.enable("luals");

vim.diagnostic.config({
	-- virtual_text = false,
	virtual_text = { current_line = true },
	-- virtual_lines = { current_line = true },
	virtual_lines = false;
});
