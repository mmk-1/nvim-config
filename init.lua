-- require 
require 'impatient' -- Apparently impatient works if its at the top of plugins
require "core.options"
require "core.keymaps"
require "lsp"
require "plugins"

-- Set colorscheme
local colorscheme = "catppuccin"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end

