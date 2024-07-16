-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here-- This file is automatically loaded by plugins.core
local opt = vim.opt
opt.autowrite = false
opt.mouse = ""
-- opt.expandtab = true
-- opt.tabstop = 4
-- opt.shiftwidth = 4
opt.swapfile = false
opt.relativenumber = false
opt.wrap = true
opt.iskeyword:append("-") -- on traite les mots avec des - comme un seul mot

-- affichage des caractères spéciaux
opt.list = true
opt.listchars:append({ nbsp = "␣", trail = "•", precedes = "«", extends = "»", tab = "> " })
