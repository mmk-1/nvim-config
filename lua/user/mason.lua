local M = {
  "williamboman/mason-lspconfig.nvim",
  commit = "e7b64c11035aa924f87385b72145e0ccf68a7e0a",
  dependencies = {
    "williamboman/mason.nvim",
    "nvim-lua/plenary.nvim",
    "jayp0521/mason-null-ls.nvim",
  },
}

M.servers = {
  "lua_ls",
  "clangd",
  "gopls",
}

M.null_ls_servers = {
  "stylua",
  "gofumpt",
  "goimports-reviser",
  "golines",
  "clang-format",
}

function M.config()
  require("mason").setup {
    ui = {
      border = "rounded",
    },
  }
  require("mason-lspconfig").setup {
    ensure_installed = M.servers,
  }
  require("mason-null-ls").setup({
    -- list of formatters & linters for mason to install
    ensure_installed = M.null_ls_servers,
    automatic_installation = true,
  })
end

return M
