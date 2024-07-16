-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.g.mapleader = ","

vim.keymap.set("i", "jj", "<ESC>")
vim.keymap.set("i", "kk", "\\")
