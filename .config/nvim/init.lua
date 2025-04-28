-- here we can just write lua, like: print("hello")
--vim.keymap.set("i","kj","<Esc>")
--vim.keymap.set("i","jk","<Esc>")
-- nvim automatically search in the lua folder, so will automatically look for /lua/config.options even thoght only config.options is specefied
-- load the vim options from /lua/config/options.lua file
require("config.options")
-- load the keymmaps from /lua/config/keymaps.lua file
require("config.keymaps")
-- lazy plugin manager setup
require("config.lazy")

-- alternative way for setting up lazy with opts as the setup table:
--require("lazy").setup(plugins, opts)
