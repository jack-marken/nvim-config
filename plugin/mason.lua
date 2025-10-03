-- Mason setup
local mason = require('mason')
local mason_lspconfig = require('mason-lspconfig')
local mason_tool_installer = require('mason-tool-installer')

mason.setup()
mason_lspconfig.setup({
  dependencies = { 'neovim/nvim-lspconfig' },
  ensure_installed = {
    'html',
    'cssls',
    'eslint',
    'tailwindcss',
    'pyright',
    'lua_ls',
  },
  automatic_installation = true,
})
mason_tool_installer.setup({
  ensure_installed = {
    'prettier',
    'stylua',
    'isort',
    'black',
    'pylint',
    'eslint_d',
  },
})

vim.diagnostic.config({
  virtual_text = { current_line = true },
  virtual_lines = false,
  -- virtual_text = false,
  -- virtual_lines = { current_line = true },
})
