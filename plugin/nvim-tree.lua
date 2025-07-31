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
