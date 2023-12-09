local M = {
    'stevearc/conform.nvim',
    -- event = { "BufWritePre" },
    -- keys = {
    --     {
    --         -- Customize or remove this keymap to your liking
    --         "<leader>f",
    --         function()
    --             require("conform").format({ async = true, lsp_fallback = true })
    --         end,
    --         mode = "",
    --         desc = "Format buffer",
    --     },
    -- },
}

function M.config()
    require("conform").setup({
        -- Define your formatters by filetype
        formatters_by_ft = {
            lua = { "stylua" },
            -- Conform will run multiple formatters sequentially
            python = { "black" },
            go = { "gofumpt", "goimports-reviser", "golines" },
            cpp = { "clang-format" },
        },

        -- Customize formatters
        formatters = {
            clang_format = {
                "-style", "{IndentWidth: 4}",
            }
        },
    })
end

return M
