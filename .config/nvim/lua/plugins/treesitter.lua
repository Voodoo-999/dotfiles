return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-context", -- this is for the function sig to stick
	},
	build = ":TSUpdate",
	config = function()
        -- this is for the function sig to stick to top
		require("treesitter-context").setup({
			enable = true, -- Turn on the plugin
			max_lines = 4, -- How many lines of nested context to show (e.g. Class > Function > If)
			trim_scope = "outer", -- Discard outer lines if max_lines is exceeded
			mode = "cursor", -- Line used to calculate context. Choices: 'cursor', 'topline'
		})
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			-- make sure those highlighting servers are installed
			ensure_installed = {
				"go",
				"zig",
				"rust",
				"c",
				"python",
				"lua",
				"vim",
				"vimdoc",
				"java",
				"javascript",
				"typescript",
				"html",
				"css",
				"json",
				"tsx",
				"markdown",
				"markdown_inline",
			},
			sync_install = false,
			autotag = { enable = true },
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
