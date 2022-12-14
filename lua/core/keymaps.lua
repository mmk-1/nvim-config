-- Set space as leader key
vim.g.mapleader = ' '
local keymap = vim.keymap.set
local opts = { silent = true }



-- Easier split navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Telescope
local builtin = require('telescope.builtin')
keymap('n', '<leader>ff', builtin.find_files, {})
keymap('n', '<leader>fg', builtin.live_grep, {})
keymap('n', '<leader>fb', builtin.buffers, {})
keymap('n', '<leader>fh', builtin.help_tags, {})

-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Vim Tmux Navigator
-- vim.g.tmux_navigator_no_mappings = 1

-- keymap("n", "<C-h>", "<C-U>TmuxNavigateLeft<cr>", opts)
-- keymap("n", "<C-j>", "<C-U>TmuxNavigateDown<cr>", opts)
-- keymap("n", "<C-k>", "<C-U>TmuxNavigateUp<cr>", opts)
-- keymap("n", "<C-l>", "<C-U>TmuxNavigateRight<cr>", opts)
-- noremap <silent> {Left-Mapping} :<C-U>TmuxNavigateLeft<cr>
-- noremap <silent> {Down-Mapping} :<C-U>TmuxNavigateDown<cr>
-- noremap <silent> {Up-Mapping} :<C-U>TmuxNavigateUp<cr>
-- noremap <silent> {Right-Mapping} :<C-U>TmuxNavigateRight<cr>
-- noremap <silent> {Previous-Mapping} :<C-U>TmuxNavigatePrevious<cr>
