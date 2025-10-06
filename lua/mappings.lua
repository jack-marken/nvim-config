vim.g.mapleader = ' '

local keymap = vim.keymap

keymap.set('n', '<leader>H', ':nohl<CR>')

keymap.set('n', '<leader>sl', '<C-w>v')
keymap.set('n', '<leader>sj', '<C-w>s')

keymap.set('n', '<leader>w=', '<C-w>=')
keymap.set('n', '<leader>w-', '<C-w>_')
keymap.set('n', '<leader>w\\', '<C-w>|')
keymap.set('n', '<leader>wh', '<C-w>h')
keymap.set('n', '<leader>wj', '<C-w>j')
keymap.set('n', '<leader>wk', '<C-w>k')
keymap.set('n', '<leader>wl', '<C-w>l')
keymap.set('n', '<leader>wH', '<C-w>H')
keymap.set('n', '<leader>wJ', '<C-w>J')
keymap.set('n', '<leader>wK', '<C-w>K')
keymap.set('n', '<leader>wL', '<C-w>L')
keymap.set('n', '<leader>wq', '<C-w>q')

-- Nvim Tree
vim.keymap.set('n', '<leader>ls', ':NvimTreeOpen<CR>') -- List
vim.keymap.set('n', '<leader>lf', ':NvimTreeFindFile<CR>') -- List find

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>sf', builtin.find_files) -- '[s]earch [f]ile'
vim.keymap.set('n', '<leader>sg', builtin.git_files) -- '[s]earch [g]it'
vim.keymap.set('n', '<leader>sw', builtin.live_grep) -- '[s]earch [w]ord'

-- Conform.nvim
vim.keymap.set('', '<leader>ff', function()
  require('conform').format({ async = true, lsp_fallback = true })
end)
