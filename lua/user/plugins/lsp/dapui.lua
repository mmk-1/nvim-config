return {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    dependencies = {
        {
            "mfussenegger/nvim-dap",
            event = "VeryLazy",
        },
    },
    keys = {
        { "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>" },
        { "<leader>df", "<cmd>lua require'dapui'.float_element()<cr>" },
        { "<leader>de", "<cmd>lua require'dapui'.eval()<cr>" },
        { "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>" }
    },
    config = function()
        require("dapui").setup {
            expand_lines = true,
            icons = { expanded = "", collapsed = "", circular = "" },
            mappings = {
                -- Use a table to apply multiple mappings
                expand = { "<CR>", "<2-LeftMouse>" },
                open = "o",
                remove = "d",
                edit = "e",
                repl = "r",
                toggle = "t",
            },
            layouts = {
                {
                    elements = {
                        { id = "scopes",      size = 0.33 },
                        { id = "breakpoints", size = 0.17 },
                        { id = "stacks",      size = 0.25 },
                        { id = "watches",     size = 0.25 },
                    },
                    size = 0.33,
                    position = "right",
                },
                {
                    elements = {
                        { id = "repl",    size = 0.45 },
                        { id = "console", size = 0.55 },
                    },
                    size = 0.27,
                    position = "bottom",
                },
            },
            floating = {
                max_height = 0.9,
                max_width = 0.5,             -- Floats will be treated as percentage of your screen.
                border = vim.g.border_chars, -- Border style. Can be 'single', 'double' or 'rounded'
                mappings = {
                    close = { "q", "<Esc>" },
                },
            },
        }
        -- Cooler icon for breakpoints
        vim.fn.sign_define("DapBreakpoint", { text = "", texthl = "DiagnosticSignError", linehl = "", numhl = "" })
    end
}
