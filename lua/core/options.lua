-- General
local set = vim.opt
set.swapfile = false
set.mouse = "a"
set.clipboard = "unnamedplus"
set.backup = false
set.undofile=true

-- UI
set.number = true
set.relativenumber = true
set.showmatch = true
set.termguicolors = true
set.showmode = false
set.showtabline = 0
set.cursorline = true
set.completeopt = { "menuone", "noselect" }

-- Tabs/Indentation
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
set.expandtab = true -- For whatever reason this doesn't work when you
set.smartindent = true

-- Wrapping
set.wrap = false
-- only md and txt are soft-wrapped
vim.api.nvim_create_autocmd('BufEnter', {
  pattern = {'*.md', '*.txt'},
 -- group = group,
  command = 'setlocal wrap'
})

-- Disable built in plugins
local disabled_built_ins = {
   "2html_plugin",
   "getscript",
   "getscriptPlugin",
   "gzip",
   "logipat",
   "netrw",
   "netrwPlugin",
   "netrwSettings",
   "netrwFileHandlers",
   "matchit",
   "tar",
   "tarPlugin",
   "rrhelper",
   "spellfile_plugin",
   "vimball",
   "vimballPlugin",
   "zip",
   "zipPlugin",
   "tutor",
   "rplugin",
   "synmenu",
   "optwin",
   "compiler",
   "bugreport",
   "ftplugin",
}

for _, plugin in pairs(disabled_built_ins) do
   vim.g["loaded_" .. plugin] = 1
end

