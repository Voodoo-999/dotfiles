return {
	{
		--Replace the neccessery lines to change colorscheme

		--Shortened Github Url
		"catppuccin/nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("catppuccin-frappe")
			--vim.g.onedark_config = {
			--   style = "cool",  -- or "cool", "warm", "darker", etc.
			--}
			--vim.cmd.colorscheme("onedark")
			--vim.cmd.colorscheme ("dracula")
		end,
	},
	{
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
