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

-- Telescope
local builtin = require('telescope.builtin')
keymap('n', '<leader>ff', builtin.find_files, {})
keymap('n', '<leader>fg', builtin.live_grep, {})
keymap('n', '<leader>fb', builtin.buffers, {})
keymap('n', '<leader>fh', builtin.help_tags, {})

-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- (N)Vim Tmux Navigator
-- Must be here to overwrite Lazy -> keymaps.lua is after lazy in ROOT/init.lua
-- https://github.com/LazyVim/LazyVim/discussions/277
local status_ok, nvim_tmux_nav = pcall(require, "nvim-tmux-navigation")
if not status_ok then
	return
end

vim.keymap.set('n', "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
vim.keymap.set('n', "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
vim.keymap.set('n', "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
vim.keymap.set('n', "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)


-- Undo tree
vim.keymap.set('n', '<leader><F5>', vim.cmd.UndotreeToggle)
