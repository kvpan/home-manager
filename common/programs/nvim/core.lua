-- OPTIONS
vim.g.netrw_liststyle = 3

vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true

vim.opt.wrap = false

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.cursorline = true

vim.opt.termguicolors = true
vim.opt.background = "light"
vim.opt.signcolumn = "yes"

vim.opt.backspace = "indent,eol,start"

vim.opt.clipboard:append("unnamedplus")

vim.opt.splitright = true
vim.opt.splitbelow = true

-- KEYMAPS
vim.g.mapleader = " "
vim.g.maplocalleader = ","

vim.keymap.set("n", "<M-x>", ":", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>bk", ":bn | bd #<CR>", { desc = "Kill current buffer" })
vim.keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- COLORSCHEME
vim.cmd("colorscheme rose-pine-main")
