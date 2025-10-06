-- vim.cmd([[colorscheme kanagawa-wave]])
vim.cmd([[colorscheme gruvbox-material]])

vim.cmd([[let g:netrw_liststyle = 3]])
vim.g.loaded_netrwPlugin = 1

local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = false
-- opt.expandtab = true
opt.listchars = { tab = '| ', trail = '-', nbsp = '␣' }
opt.autoindent = true

-- TEMP --

-- opt.tabstop = 4
-- opt.shiftwidth = 4
-- opt.expandtab = true

-----

opt.wrap = false
opt.list = true

-- search settings
opt.ignorecase = true
opt.smartcase = true
opt.cursorline = true
opt.termguicolors = true
opt.background = 'dark'
opt.signcolumn = 'yes'
