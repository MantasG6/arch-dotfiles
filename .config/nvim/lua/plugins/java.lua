return {
    {
        'nvim-java/nvim-java',
        config = function()
            require('java').setup()
            vim.lsp.config('jdtls', {
                settings = {
                    java = {
                        sources = {
                            organizeImports = {
                                staticStarThreshold = 3,
                            },
                        },
                        saveActions = {
                            organizeImports = true,
                        },
                    },
                },
            })
            vim.lsp.enable('jdtls')
        end,
    },
    {
        "rcarriga/nvim-dap-ui",
        lazy = false,
        dependencies = {
            "mfussenegger/nvim-dap",
            "nvim-neotest/nvim-nio",
            "nvim-java/nvim-java",
        },
        opts = {},
        keys = function ()
            local dapui = require("dapui")
            return {
                {
                    "<leader>xo",
                    function() dapui.open() end,
                    desc = "Open DAP UI"
                },
                {
                    "<leader>xc",
                    function () dapui.close() end,
                    desc = "Close DAP UI"
                },
                {
                    "<leader>xb",
                    "<cmd>DapToggleBreakpoint<cr>",
                    desc = "Toggle Breakpoint"
                },
            }
        end,
        config = function()
            local dap, dapui = require("dap"), require("dapui")
            dapui.setup()

            dap.listeners.before.attach.dapui_config = function()
                dapui.open()
            end
            dap.listeners.before.launch.dapui_config = function()
                dapui.open()
            end
            dap.listeners.before.event_terminated.dapui_config = function()
                dapui.close()
            end
            dap.listeners.before.event_exited.dapui_config = function()
                dapui.close()
            end
        end,
    },
}
