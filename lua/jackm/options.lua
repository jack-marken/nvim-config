-- vim.cmd[[colorscheme tokyonight-night]]
-- vim.cmd[[colorscheme melange]]
vim.cmd[[colorscheme kanagawa-wave]]
-- vim.cmd[[colorscheme kanagawa-dragon]]
-- vim.cmd[[colorscheme nord]]
vim.cmd[[let g:netrw_liststyle = 3]]
vim.g.loaded_netrwPlugin = 1

local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
