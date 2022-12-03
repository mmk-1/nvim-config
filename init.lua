-- Disabling netrw at the very start
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- require 
require "core.options"
require "core.keymaps"
require "lsp"
require "plugins"

-- Set colorscheme
local colorscheme = "PaperColor"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end


