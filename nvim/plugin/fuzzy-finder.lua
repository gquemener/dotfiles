require('telescope').setup()

vim.api.nvim_set_keymap('n', '<c-p>', ':Telescope find_files<cr>', { noremap = true })
--vim.api.nvim_set_keymap('n', '<c-m>', ':Telescope find_files no_ignore=true<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<c-f>', ':Telescope live_grep<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>f', ':Telescope grep_string<cr>', { noremap = true })
vim.api.nvim_set_keymap('v', '<leader>f', '"zy:Telescope live_grep default_text=<C-r>z<cr>', { noremap = true })
