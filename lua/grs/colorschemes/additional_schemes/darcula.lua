return {
    {
        "xiantang/darcula-dark.nvim",
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
        },
        lazy = false,
        config = function()
            require('darcula').setup {
                override = function(c)
                    return {
                        background = "#151515"
                    }
                end,
            }
        end,
    }
}
