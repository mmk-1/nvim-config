local M = {
  "williamboman/mason.nvim",
  -- commit = "4546dec8b56bc56bc1d81e717e4a935bc7cd6477",
  cmd = "Mason",
  event = "BufReadPre",
  dependencies = {
    {
      "williamboman/mason-lspconfig.nvim",
      -- commit = "93e58e100f37ef4fb0f897deeed20599dae9d128",
    },
    { "jayp0521/mason-null-ls.nvim" },
  },
}

local settings = {
  ui = {
    border = "none",
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    },
  },
  log_level = vim.log.levels.INFO,
  max_concurrent_installers = 4,
}

function M.config()
  require("mason").setup(settings)
  require("mason-lspconfig").setup {
    -- Servers are specified in lua/user/utils/init.lua
    ensure_installed = require("user.utils").servers,
    automatic_installation = true,
  }
  require("mason-null-ls").setup({
    -- list of formatters & linters for mason to install
    ensure_installed = {
      "stylua", -- lua formatter
      "gofumpt",
      "goimports-reviser",
      "golines",
    },
    automatic_installation = true,
  })
end

return M
