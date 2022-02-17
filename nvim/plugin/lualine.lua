require('lualine').setup {
    options = { theme = 'powerline' },
    sections = {
        lualine_c = {
            {
                'filename',
                path = 1,
            }
        }
    }
}
