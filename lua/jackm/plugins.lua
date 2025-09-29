local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'airblade/vim-gitgutter'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-commentary'

	-- Nvim Tree
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
  -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Tree Sitter
  use 'nvim-treesitter/nvim-treesitter'

  -- Linting
  use 'mason-org/mason.nvim'
  use 'mason-org/mason-lspconfig.nvim'
  -- use 'mason-org/mason-registry'
  -- use 'dense-analysis/ale'

  -- Colour Schemes
  use 'morhetz/gruvbox'
  use 'savq/melange-nvim'
  use 'rebelot/kanagawa.nvim'
  use 'shaunsingh/nord.nvim'

  if packer_bootstrap then
    require('packer').sync()
  end
end)
