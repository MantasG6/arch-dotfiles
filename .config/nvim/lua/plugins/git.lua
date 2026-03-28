return {
    {
        "NeogitOrg/neogit",
        lazy = true,
        dependencies = {
            "nvim-lua/plenary.nvim",         -- required
            "sindrets/diffview.nvim",
            "nvim-telescope/telescope.nvim",
        },
        cmd = "Neogit",
        keys = {
            { "<leader>gg", "<cmd>Neogit<cr>", desc = "Show Neogit UI" }
        }
    },
    {
        "lewis6991/gitsigns.nvim",
        keys = {
            {
                "<leader>gb",
                "<cmd>Gitsigns blame<cr>",
                desc = "Show git blame"
            },
            {
                "<leader>hp",
                "<cmd>Gitsigns preview_hunk_inline<cr>",
                desc = "Preview hunk"
            },
            {
                "<leader>hs",
                "<cmd>Gitsigns stage_hunk<cr>",
                desc = "Stage hunk"
            },
            {
                "<leader>hr",
                "<cmd>Gitsigns reset_hunk<cr>",
                desc = "Reset hunk"
            },
        },
    }
}
