local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use('wbthomason/packer.nvim')
  use('airblade/vim-gitgutter')
  use('tpope/vim-fugitive')

  -- Comments
  use('tpope/vim-commentary')
  use('JoosepAlviste/nvim-ts-context-commentstring')

  -- Nvim Tree
  use('nvim-tree/nvim-tree.lua')
  use('nvim-tree/nvim-web-devicons')

  use({
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    requires = { { 'nvim-lua/plenary.nvim' } },
  })

  -- Tree Sitter
  use('nvim-treesitter/nvim-treesitter')

  -- LSP
  use('neovim/nvim-lspconfig')
  use('mason-org/mason.nvim')
  use('mason-org/mason-lspconfig.nvim')
  use('WhoIsSethDaniel/mason-tool-installer.nvim')

  -- Formatting
  use('stevearc/conform.nvim')

  -- Linting
  use('mfussenegger/nvim-lint')

  -- Colour Schemes
  use('sainnhe/gruvbox-material')
  use('rebelot/kanagawa.nvim')

  if packer_bootstrap then
    require('packer').sync()
  end
end)
