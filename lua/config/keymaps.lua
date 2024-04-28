-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps hereafter

--vim.keymap.del("n", "<D-r>")
--vim.keymap.set("n", "<M-r>", "<Cmd>RustRun<CR>")
--
--Examples:
--vim.keymap.set("n", "<leader>rr", "<Cmd>RustRun<CR>", { desc = "Whichkey description" })
vim.keymap.set("n", "<leader>n", ":ASToggle<CR>", { desc = "AutoSave Toggle" })
