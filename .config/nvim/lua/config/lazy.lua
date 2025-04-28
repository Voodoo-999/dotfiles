-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	-- Trying to clone the lazy.nvim from github (from the lazyrep to the lazypath)
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	-- If error:
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
-- add lazy to nvim run time path (rtp)
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.maplocalleader = " "

-- Setup lazy.nvim
-- Here all of the opts of lazy are
require("lazy").setup({
	performance = {
		cache = {
			enabled = false,
		},
	},
	spec = {
		-- import your plugins, this tell lazy where the plugins are (a direcory called plugins)
		{ import = "plugins" },
	},
	install = {
		-- colorscheme that will be used when installing plugins.
		colorscheme = { "habamax" },
	},
	change_detection = {
		-- Don't notify us every time a change is made to the configuration
		-- notify = false
	},
	checker = {
		-- automatically check for plugin updates
		enabled = true,
		-- Don't spam us with notification every time there is an update available
		notify = false,
	},
})
