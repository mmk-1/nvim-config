-- set leader key to space
vim.g.mapleader = " "

-- Set space as leader key
local keymap = vim.keymap.set
local opts = { silent = true }

-- Disable highlight
keymap("n", "<leader>hh", ":noh<CR>")

-- Easier split navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize windows easier
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Move highlighted blocks 
keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

-- Keep cursor in middle of page when half-page jumping
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")

-- Preserves the highlighted & yanked text in register
keymap("x", "p", "\"_dP")

-- Search and replace word under cursor
keymap("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- clear search highlights
keymap("n", "<leader>nh", ":nohl<CR>")



keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)