local status_ok, tmux = pcall(require, "vim-tmux-navigator")
if not status_ok then
	return
end

vim.keymap.set('n', "<C-h>", tmux.TmuxNavigateLeft)
vim.keymap.set('n', "<C-j>", tmux.TmuxNavigateDown)
vim.keymap.set('n', "<C-k>", tmux.TmuxNavigateUp)
vim.keymap.set('n', "<C-l>", tmux.TmuxNavigateRight)
vim.keymap.set('n', "<C-\\>", tmux.TmuxNavigateLastActive)
vim.keymap.set('n', "<C-Space>", tmux.TmuxNavigateNext)
