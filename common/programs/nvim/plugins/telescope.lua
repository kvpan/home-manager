local telescope = require("telescope")

telescope.setup({
	defaults = {
		path_display = { shorten = 3 },
	},
})

telescope.load_extension("fzf")
telescope.load_extension("neoclip")

vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Find open buffer" })
vim.keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<CR>", { desc = "Find string under cursor" })
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find in current directory" })
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Find string" })
vim.keymap.set("n", "<leader>fs", "<cmd>Telescope lsp_document_symbols<CR>", { desc = "Find symbol in document" })
vim.keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<CR>", { desc = "Find todos" })
vim.keymap.set("n", "<leader>fp", "<cmd>Telescope neoclip<CR>", { desc = "Find in clipboard" })
