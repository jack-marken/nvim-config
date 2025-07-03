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

  local function my_on_attach(bufnr)
    local api = require "nvim-tree.api"

    local function opts(desc)
      return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- default mappings
    api.config.mappings.default_on_attach(bufnr)

    -- custom mappings
    vim.keymap.set("n", "?",     api.tree.toggle_help,                  opts("Help"))
    vim.keymap.set("n", "s",     api.node.open.horizontal,              opts("Horizontal Split"))
    vim.keymap.set("n", "v",     api.node.open.vertical,                  opts("Vertical Split"))
  end
  require("nvim-tree").setup({
    actions = {
      open_file = {
        quit_on_open = true,
      },
    },
    on_attach = my_on_attach,
  })
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
  -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Tree Sitter
  use 'nvim-treesitter/nvim-treesitter'

	-- Linting
	use 'dense-analysis/ale'

  -- Colour Schemes
  use 'folke/tokyonight.nvim'
  require("tokyonight").setup()
  use 'morhetz/gruvbox'
  use 'savq/melange-nvim'
  use 'rebelot/kanagawa.nvim'
  use 'shaunsingh/nord.nvim'


  if packer_bootstrap then
    require('packer').sync()
  end
end)
