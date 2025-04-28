-- Set our leader keybinding to space
-- Anywehere you see <leader> in a keymapping specifies the space key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Remove search highlights after searchig
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Remove search highlights" })

-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", {desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", {desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", {desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", {desc = "Move focus to the upper window" })

-- Easily split windows
vim.keymap.set("n", "<leader>wv", ":vsplit<cr>", { desc = "[W]indow Split [V]ertical" })
vim.keymap.set("n", "<leader>wh", ":split<cr>", { desc = "[W]indow Split [H]orizontal" })

-- Some usefull keymaps
local runIt = require("runIt") -- my own script for running files with tmux
vim.keymap.set("n","<C-d>","<C-d>zz") -- center when going down by half page
vim.keymap.set("n","<C-u>","<C-u>zz") -- center when going up by half page
vim.keymap.set("i","<C-BS>","<C-w>") -- delete entire word with ctrl-backspace in insert mode
vim.keymap.set("i","<C-h>","<C-w>") -- delete entire word with ctrl-backspace in insert mode
vim.keymap.set({'n', 'v'}, '<leader>p', '"_dP', { noremap = true }) -- set the leader p to not yank the text it replaced (after in v mode)
vim.keymap.set({'n'}, '<leader>dd', '"_dd', { noremap = true }) -- set the leader dd to not yank the text it deleted
vim.keymap.set({'v'}, '<leader>d', '"_d', { noremap = true }) -- set the leader dd to not yank the text it deleted
vim.keymap.set('n', '<leader>b',runIt.runFile) -- leader b will [B]uild the file with my own script
vim.keymap.set('n','<leader><leader>l',":set colorcolumn=120<cr>") -- will disply a [L]ine at 120 characters
vim.keymap.set('n','<leader><leader>x',":source %<cr>") -- resource nvim
vim.keymap.set("n", "<C-n>", ":bn<cr>", {desc = "[B]uffer [N]ext" })
vim.keymap.set("n", "<C-p>", ":bp<cr>", {desc = "[B]uffer [P]revious" })

