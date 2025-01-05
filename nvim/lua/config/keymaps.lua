-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "jj", "<ESC>")
vim.keymap.set("i", "kk", "\\")
vim.keymap.set({ "n", "i" }, "<Up>", "<Nop>")
vim.keymap.set({ "n", "i" }, "<Left>", "<Nop>")
vim.keymap.set({ "n", "i" }, "<Down>", "<Nop>")
vim.keymap.set({ "n", "i" }, "<Right>", "<Nop>")
