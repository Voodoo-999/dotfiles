return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = {
				theme = "auto",
			},
			sections = {
				--Remove the mode(Inser/Visual...) by setting lualine_a to an empty table
				lualine_a = {},

				-- Configure lualine_c to show the path with parent directories
				lualine_c = {
					{
						"filename",
						path = 1, -- 0: Just filename, 1: Relative path, 2: Absolute path, 3: Absolute path with tilde
						shorting_target = 40, -- Shortens path if window is narrow
					},
				},
			},
		})
	end,
}
