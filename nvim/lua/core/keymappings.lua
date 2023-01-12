-- n, i, v, x, t = mode

local opt = { silent = true, noremap = true }

local map = vim.api.nvim_set_keymap

-- Don't cry, no more arrow keys

map("", "<Up>", "<Nop>", opt)
map("", "<Down>", "<Nop>", opt)
map("", "<Left>", "<Nop>", opt)
map("", "<Right>", "<Nop>", opt)

-- Maping leader keymap

map("", "<Space>", "<Nop>", opt)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Exitig fast in insert mode

map("i", "jk", "<Esc>", opt)

-- Better insert mode navigation

map("i", "<C-h>", "<Left>", opt)
map("i", "<C-l>", "<Right>", opt)
map("i", "<C-k>", "<Up>", opt)
map("i", "<C-j>", "<Down>", opt)

-- Move line up and down

map("i", "<A-k>", "<Esc>:m .-2<CR>==gi", opt)
map("i", "<A-j>", "<Esc>:m .+1<CR>==gi", opt)

map("n", "<A-k>", ":m .-2<CR>", opt)
map("n", "<A-j>", ":m .+1<CR>", opt)

map("v", "<A-k>", ":m .-2<CR>==", opt)
map("v", "<A-j>", ":m .+1<CR>==", opt)

map("x", "<A-k>", ":move '<-2<CR>gv-gv", opt)
map("x", "<A-j>", ":move '>+1<CR>gv-gv", opt)

-- Save and exit

map("i", "<C-q>", "<Esc>:exit<CR>", opt)
map("i", "<C-s>", "<Esc>:w<CR>", opt)
map("i", "<C-d>", "<Esc>:wq<CR>", opt)

map("n", "<C-q>", ":exit<CR>", opt)
map("n", "<C-s>", ":w<CR>", opt)
map("n", "<C-d>", ":wq<CR>", opt)

-- Better tabbing

map("v", ">", ">gv", opt)
map("v", "<", "<gv", opt)

-- Resize windows vertically 

map("n", "<A-h>", ":vertical resize -2<CR>", opt)
map("n", "<A-l>", ":vertical resize +2<CR>", opt)
