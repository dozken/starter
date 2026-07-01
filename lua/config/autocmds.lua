-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Typo-tolerant save/quit commands
vim.api.nvim_create_user_command("W", "w<bang>", { bang = true })
vim.api.nvim_create_user_command("Wa", "wa<bang>", { bang = true })
vim.api.nvim_create_user_command("WA", "wa<bang>", { bang = true })
vim.api.nvim_create_user_command("Wq", "wq<bang>", { bang = true })
vim.api.nvim_create_user_command("WQ", "wq<bang>", { bang = true })
vim.api.nvim_create_user_command("Wqa", "wqa<bang>", { bang = true })
vim.api.nvim_create_user_command("WQA", "wqa<bang>", { bang = true })
vim.api.nvim_create_user_command("Q", "q<bang>", { bang = true })
vim.api.nvim_create_user_command("Qa", "qa<bang>", { bang = true })
vim.api.nvim_create_user_command("QA", "qa<bang>", { bang = true })
