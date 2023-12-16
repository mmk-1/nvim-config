local M = {
  "jose-elias-alvarez/null-ls.nvim",
}

function M.config()
  local null_ls = require "null-ls"

  local formatting = null_ls.builtins.formatting

  null_ls.setup {
    sources = {
      formatting.prettier,
      formatting.stylua,
      formatting.clang_format.with({ extra_args = { "-style", "{IndentWidth: 4}" } }),
      formatting.gofumpt,
      formatting.goimports_reviser,
      formatting.golines,
    },
  }
end

return M
