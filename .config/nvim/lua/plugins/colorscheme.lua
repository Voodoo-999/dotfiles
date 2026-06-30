return {
	{
		--Replace the neccessery lines to change colorscheme

		--Shortened Github Url
		"projekt0n/github-nvim-theme",
		lazy = false,
		priority = 1000,
		config = function()
			--vim.cmd.colorscheme("nordfox")
			--vim.cmd.colorscheme("catppuccin-frappe")
			-- vim.cmd.colorscheme("kanagawa")

			-- Other options you can try instead if you want different shades:
			vim.cmd.colorscheme("github_dark")
			-- vim.cmd.colorscheme("github_dark_dimmed")
			-- vim.cmd.colorscheme("github_dark_default")
			-- vim.cmd.colorscheme("github_dark_colorblind")
			--vim.cmd.colorscheme("onedark")
			--vim.cmd.colorscheme("gruvbox")
			--vim.cmd.colorscheme ("dracula")
		end,
	},
	{
		"catppuccin/nvim",
		"projekt0n/github-nvim-theme",
		"neanias/everforest-nvim",
		"rebelot/kanagawa.nvim",
		"EdenEast/nightfox.nvim",
		"yorickpeterse/nvim-grey",
		"savq/melange-nvim",
		"Mofiqul/dracula.nvim",
		"rose-pine/neovim",
		"vague2k/vague.nvim",
		"Mofiqul/vscode.nvim",
		"ellisonleao/gruvbox.nvim",
		"folke/tokyonight.nvim",
		"Mofiqul/dracula.nvim",
		"navarasu/onedark.nvim",
	},
}
