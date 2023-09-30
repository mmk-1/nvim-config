return {
    {
        "mfussenegger/nvim-dap",
        event = "VeryLazy",
        keys = {
            { "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>" },
            { "<leader>dc", "<cmd>lua require'dap'.continue()<cr>" },
            { "<leader>di", "<cmd>lua require'dap'.step_into()<cr>" },
            { "<leader>do", "<cmd>lua require'dap'.step_over()<cr>" },
            { "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>" },
            -- { "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>" },
            -- { "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>" },
            -- { "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>" },
            -- { "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>" }
        },
        config = function()
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
