-- require 'nvim-treesitter.install'.prefer_git = false
require('nvim-treesitter.configs').setup({
  ensure_installed = {
    'angular',
    'bash',
    'c',
    'c_sharp',
    'cmake',
    'css',
    'csv',
    'diff',
    'dockerfile',
    'erlang',
    'git_config',
    'git_rebase',
    'gitattributes',
    'gitcommit',
    'gitignore',
    'glsl',
    'html',
    'javascript',
    'json',
    'json5',
    'lua',
    'markdown',
    'markdown_inline',
    'php',
    'python',
    'query',
    'sql',
    'tsv',
    'tsx',
    'typescript',
    'vim',
    'vimdoc',
    'vue',
    'xml',
    'yaml',
  },

  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
})

-- Use an existing parser for another file type
vim.treesitter.language.register('html', 'ejs')
