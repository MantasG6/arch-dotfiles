return {
    {
        "nvim-neotest/neotest",
        dependencies = {
            "nvim-neotest/nvim-nio",
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
        },
        keys = function()
            local neotest = require("neotest")
            local keys = {
                {
                    "<leader>tt",
                    function() neotest.run.run() end,
                    desc = "Run the nearest test"
                },
                {
                    "<leader>to",
                    function() neotest.output_panel.toggle() end,
                    desc = "Run the nearest test"
                },
            }
            return keys
        end,
    },
}
