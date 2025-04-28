
-- left column and similar settings
vim.opt.number = true -- diplay line number
vim.opt.relativenumber = true
vim.opt.numberwidth = 2
vim.opt.signcolumn = "yes" --alawys sho sign column
vim.opt.wrap = false -- display lines as single line
vim.opt.scrolloff = 10 -- number of lines to keep above/below curser
vim.opt.sidescrolloff = 8 -- number of column keep to the side curser

-- Tab spacing/behaviour
vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.shiftwidth = 4 -- number of spaces inserted for each indentation level
vim.opt.tabstop = 4 -- number of spaces inserter for tab character
vim.opt.softtabstop = 4 --number of spaces inserted for <Tab> key (not sure why there is 2 options for this)
vim.opt.smartindent = true -- enable smart indentation
vim.opt.breakindent = true -- enable line breaking indentation

-- General Behaviors
-- vim.g.loaded_netrw = 1 -- disable netrw
-- vim.g.loaded_netrwPlugin = 1 -- disable netrw plugin
vim.opt.backup = false -- disable backup file creation
vim.opt.clipboard = "unnamedplus" -- enable system clipboard access
vim.opt.conceallevel = 0 -- show concealed characters in markdown files
vim.opt.fileencoding = "utf-8" -- set file encoding to UTF-8
vim.opt.mouse = "a" -- enable mouse support
vim.opt.showmode = false -- hide mode display
vim.opt.splitbelow = true -- force horizontal splits below current window
vim.opt.splitright = true -- force horizontal splits right of current window
vim.opt.termguicolors = true -- enable term GUI colors
vim.opt.timeoutlen = 1000 -- set timeout for mapped sequences (1000 = one second)
vim.opt.undofile = true -- enable persistent undo
vim.opt.updatetime = 100 -- set faster completion
vim.opt.writebackup = false -- prevent editing of files being edited elsewhere
vim.opt.cursorline = true -- highlight current line

-- Searching Behaviors 
vim.opt.hlsearch = true -- highlight all matches in search
vim.opt.ignorecase = true -- ingnore case in search
vim.opt.smartcase = true -- match case if explicitly stated


