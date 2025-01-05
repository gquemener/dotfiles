return {
    "zerochae/telescope-spring.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    config = function()
        require("spring").setup()
    end,
}
