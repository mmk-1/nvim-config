-- require 
vim.g.mapleader = ' '
require "plugins"
require "core.options"
require "core.keymaps"
require "core.autocmds"
require "lsp"
require "plugins"

-- Set colorscheme
local colorscheme = "catppuccin"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end

