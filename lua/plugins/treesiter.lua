return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "master",
        lazy = false,
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = {
                    "lua",
                    "php",
                    "javascript",
                    "typescript",
                    "html",
                    "css",
                    "json",
                    "bash",
                    "markdown",
                    "markdown_inline",
                    "vim",
                    "vimdoc",
                },

                highlight = {
                    enable = true,
                },

                indent = {
                    enable = true,
                },
            })
        end,
    },
}
