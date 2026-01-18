return {
    "folke/flash.nvim",
    event = "VeryLazy",
    ---@type Flash.Config
    ---- uncomment if you wnat to set 'f' as the default jump
    opts = {
        modes = {
            -- disable the default 'f', 'F', 't', 'T' enhancements
            char = {
                enabled = false,
            },
        },
    },
    keys = {
        {
            "f",
            mode = { "n", "x", "o" },
            function()
                require("flash").jump()
            end,
            desc = "Flash",
        },
        {
            "S",
            mode = { "n", "x", "o" },
            function()
                require("flash").treesitter()
            end,
            desc = "Flash Treesitter",
        },
        {
            "r",
            mode = "o",
            function()
                require("flash").remote()
            end,
            desc = "Remote Flash",
        },
        {
            "R",
            mode = { "o", "x" },
            function()
                require("flash").treesitter_search()
            end,
            desc = "Treesitter Search",
        },
        {
            "<c-s>",
            mode = { "c" },
            function()
                require("flash").toggle()
            end,
            desc = "Toggle Flash Search",
        },
    },
}
