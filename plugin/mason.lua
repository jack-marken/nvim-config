require("mason").setup();
require("mason-lspconfig").setup({
	ensure_installed = {
		'pyright',
		'eslint',
		'lua_ls',
	}
})

-- Turn off annoying autocomplete
vim.cmd("set completeopt+=noselect");

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if client:supports_method('textDocument/completion') then
      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
    end
  end,
})

-- Pyright
vim.lsp.config["pyright"] = {
	cmd = { "pyright" },
	filetypes = { "py", "python" },
};
vim.lsp.enable("pyright");

-- ESLint
vim.lsp.config["eslint"] = {
	cmd = { "vscode-eslint-language-server" },
	filetypes = {
		'javascript',
		'javascriptreact',
		'javascript.jsx',
		'typescript',
		'typescriptreact',
		'typescript.tsx',
	},
	root_markers = {
		'tsconfig.json',
		'jsconfig.json',
		'package.json',
		'.git'
	},
};
vim.lsp.enable("eslint");

-- Lua Language Server
vim.lsp.config["lua_ls"] = {
  cmd = { "lua-language-server" },
  filetypes = { "lua" },
  root_markers = { ".luarc.json", ".git", vim.uv.cwd() },
  settings = {
    Lua = {
			diagnostics = {
				globals = { "vim" },
			},
      telemetry = {
        enable = false,
      },
    },
  },
}
vim.lsp.enable("lua_ls")


vim.diagnostic.config({
	-- virtual_text = false,
	virtual_text = { current_line = true },
	-- virtual_lines = { current_line = true },
	virtual_lines = false;
});
