return {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
        -- looks cool but dont work for some reason...
        -- ts-auto utilizes treesitter to understand the code stucture to automatically colse tsx tags
        -- "window/nvim-ts-autotag"
    },
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            -- make sure those highlighting servers are installed
            ensure_installed = {"go", "zig", "rust", "c", "python", "lua", "vim", "vimdoc", "java", "javascript", "typescript", "html", "css", "json", "tsx", "markdown", "markdown_inline"},
            sync_install = false,
            autotag = { enable = true},
            highlight = { enable = true },
            indent = { enable = true }
        })
    end


}
