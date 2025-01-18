vim.g.mapleader = " "
local options = { noremap = true }

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "jk", "<Esc>", options)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>y", "\"+y")

-- Copy to system clipboard
vim.api.nvim_set_keymap('n', '<leader>y', ':normal "+y<CR>', { noremap = true, silent = true })

-- Paste from system clipboard in insert mode
vim.api.nvim_set_keymap('i', '<C-v>', '<C-r>=system("xclip -o -selection clipboard")<CR>', { noremap = true, silent = true })

-- Go back from the definition
vim.api.nvim_set_keymap('n', '<C-i>', ':pop<CR>', { noremap = true, silent = true })
 
-- Split screen vertical
vim.api.nvim_set_keymap('n', '<C-s>', ':vsplit<CR>', { noremap = true, silent = true })
