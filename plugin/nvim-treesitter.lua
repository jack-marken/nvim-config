require 'nvim-treesitter.install'.prefer_git = false

-- Use an existing parser for another file type
vim.treesitter.language.register("html", "ejs")
