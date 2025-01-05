return {
    "telescope.nvim",
    dependencies = {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        config = function()
            require("telescope").load_extension("fzf")
        end,
    },
    config = function()
        require("telescope").setup({
            defaults = {
                path_display = { "filename_first" },
            },
        })
    end,
}
