return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    -- or, branch = '0.1.x',
    dependencies = {
        -- general purpose plugin uset to build user interfaces in neovim plugins
        "nvim-lua/plenary.nvim",
    },
    config = function()
        -- get access to telescopes built in functions
        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>ff", builtin.find_files, {})     -- [F]ind [F]iles
        vim.keymap.set("n", "<leader>fs", builtin.lsp_document_symbols, {})     -- [F]ind [F]iles
        vim.keymap.set("n", "<leader>fc", builtin.colorscheme, {}) -- [F]ind [F]iles
        vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})      -- [F]ind by [G]rep
        vim.keymap.set("n", "<leader>fd", builtin.diagnostics, {})    -- [F]ind code [D]iagnostics
        vim.keymap.set("n", "<leader>fb", builtin.buffers, {})        -- [F]ind [B]uffer
        vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})      -- [F]ind in [H]elp
        --vim.keymap.set("n", "<leader>f.", builtin.oldfiles, {})       -- [F]ind in recent files ("." for repeat)
        --vim.keymap.set("n", "<leader>fr", builtin.resume, {})         -- [F]ind [R]esume (search again the same thing)
    end,
}
