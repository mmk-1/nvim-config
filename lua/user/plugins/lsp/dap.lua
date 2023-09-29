return {
    {
        "mfussenegger/nvim-dap",
        -- event = "VeryLazy",
        config = function()
            local dap = require("dap")

            local keymap = vim.keymap.set
            local opts = { silent = true }
            keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
            keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", opts)
            keymap("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", opts)
            keymap("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", opts)
            keymap("n", "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>", opts)
            -- keymap("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", opts)
            -- keymap("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", opts)
            -- keymap("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", opts)
            -- keymap("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>", opts)
        end
    },
    {
        "dreamsofcode-io/nvim-dap-go",
        ft = "go",
        dependencies = "mfussenegger/nvim-dap",
        config = function()
            local dap_go = require("dap-go")
            dap_go.setup()
            vim.cmd('command! GoDebugTest lua require("dap-go").debug_test()')
        end
    },
}
