vim.o.scrolloff = 5
vim.o.cursorline = true

vim.o.swapfile = false

vim.keymap.set('i', 'jj', "<Esc>", { silent = true })

-- Window management
vim.keymap.set('n', '<C-h>', '<C-w>h', { silent = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { silent = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { silent = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { silent = true })

-- Telescope
vim.keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { desc = '[S]earch [R]esume' })

-- Search selection
vim.keymap.set('v', '//', 'y/\\V<C-r>=escape(@",\'/\')<CR><CR>');

-- Abbreviations
vim.cmd('cabbrev bda bufdo bw<cr>')
