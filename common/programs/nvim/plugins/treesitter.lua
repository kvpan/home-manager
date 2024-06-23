local treesitter = require("nvim-treesitter.configs")
treesitter.setup({
	highlight = { enable = true },
	indent = { enable = true },
	ensure_installed = {},
	auto_install = false,
	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "<C-space>",
			node_incremental = "<C-space>",
			node_decremental = "<BS>",
		},
	},
})
