-- require 'nvim-treesitter.install'.prefer_git = false
require("nvim-treesitter.configs").setup({
  ensure_installed = {
    "javascript",
    "typescript",
    "tsx",
    "c",
    "lua",
    "vim",
    "vimdoc",
    "query",
    "markdown",
    "markdown_inline",
  },

  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
})

-- Use an existing parser for another file type
vim.treesitter.language.register("html", "ejs")
