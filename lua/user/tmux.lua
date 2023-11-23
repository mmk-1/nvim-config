local M = {
    "alexghergh/nvim-tmux-navigation",
}

M.keys = {
    { "<c-h>", "<cmd>NvimTmuxNavigateLeft<cr>" },
    { "<c-j>", "<cmd>NvimTmuxNavigateDown<cr>" },
    { "<c-k>", "<cmd>NvimTmuxNavigateUp<cr>" },
    { "<c-l>", "<cmd>NvimTmuxNavigateRight<cr>" },
}

function M.config()
    require("nvim-tmux-navigation")
end

return M