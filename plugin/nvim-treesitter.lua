-- require 'nvim-treesitter.install'.prefer_git = false
require 'nvim-treesitter.configs'.setup {
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	},
}

-- Use an existing parser for another file type
vim.treesitter.language.register("html", "ejs")
