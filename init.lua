-- require
vim.g.mapleader = ' '
require "plugins"
require "core.options"
require "core.keymaps"
require "core.autocmds"
require "lsp"
require "plugins"

-- Set colorscheme
local colorscheme = "onedark"

-- For onedark theme we must select the style like this :/
require('onedark').setup {
    style = 'deep'
}
require('onedark').load()

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end
