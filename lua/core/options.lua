-- General
local set = vim.opt
set.swapfile = false
set.mouse = "a"
set.clipboard = "unnamedplus"

-- UI
set.number = true
set.relativenumber = true
set.showmatch = true

-- Tabs/Indentation
set.expandtab = true
set.shiftwidth = 4
set.tabstop = 4
set.smartindent = true

-- Wrapping
set.wrap = false
-- only md and txt are soft-wrapped
vim.api.nvim_create_autocmd('BufEnter', {
  pattern = {'*.md', '*.txt'},
 -- group = group,
  command = 'setlocal wrap'
})

-- Autocomplete pairs no need for a plugin!!!
vim.api.nvim_exec(
[[
    inoremap { {}<Esc>ha
    inoremap ( ()<Esc>ha
    inoremap [ []<Esc>ha
    inoremap " ""<Esc>ha
    inoremap ' ''<Esc>ha
    inoremap ` ``<Esc>ha
]],
true)
