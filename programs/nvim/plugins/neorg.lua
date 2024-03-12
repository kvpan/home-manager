local neorg = require("neorg")
neorg.setup({
	load = {
		["core.defaults"] = {},
		["core.concealer"] = { config = { folds = false } },
		["core.integrations.telescope"] = {},
		["core.qol.toc"] = { config = { close_after_use = true } },
		["core.dirman"] = {
			config = {
				workspaces = {
					notes = "~/Documents/notes",
					sandbox = "~/Code/z/neorg-sandbox",
				},
				default_workspace = "notes",
			},
		},
	},
})
