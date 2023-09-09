-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps hereafter
vim.keymap.set("n", "<A-r>", "<cmd>RustRunnables<cr>", { desc = "Rust Runnables" })