vim.g.mapleader = " "

-- Vim options
-- share clipboard with system
vim.opt.clipboard = "unnamedplus"
-- show line numbers
vim.opt.number = true

-- indent
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- other options
vim.opt.colorcolumn = "80"
vim.opt.updatetime = 100
vim.opt.termguicolors = true

-- Keymaps
vim.keymap.set("n", "<leader>-", vim.cmd.Ex)
