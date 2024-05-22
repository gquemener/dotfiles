return {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    config = function()
        require("telescope").load_extension "file_browser"
        vim.api.nvim_set_keymap(
            "n",
            "<leader>lf",
            ":Telescope file_browser display_stat=false grouped=true<CR>",
            { noremap = true }
        )
        vim.api.nvim_set_keymap(
            "n",
            "<leader>lr",
            ":Telescope file_browser path=%:p:h select_buffer=true display_stat=false grouped=true<CR>",
            { noremap = true }
        )
    end
}
