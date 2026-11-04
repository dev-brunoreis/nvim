return {
    {
        "akinsho/toggleterm.nvim",
        version = "*",
        config = function()
            require("toggleterm").setup({
                size = 15,
                direction = "horizontal",
                persist_size = true,
                close_on_exit = false,
            })
        end,
    },
}
