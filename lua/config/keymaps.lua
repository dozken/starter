-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Remove LazyVim's window-move mappings; vim-tmux-navigator handles these
vim.keymap.del("n", "<C-h>")
vim.keymap.del("n", "<C-j>")
vim.keymap.del("n", "<C-k>")
vim.keymap.del("n", "<C-l>")

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll & center down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll & center up" })

vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Replace without clobbering register" })
vim.keymap.set({ "n", "v" }, "<leader>D", [["_d]], { desc = "Delete to void register" })
