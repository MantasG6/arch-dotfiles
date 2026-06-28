return {
    {
        'MeanderingProgrammer/render-markdown.nvim',
        dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
        opts = {
            enabled = false,
            latex = { enabled = false },
        },
        keys = {
            {
                "<leader>mt",
                function() require('render-markdown').toggle() end,
                desc = "Toggle markdown preview"
            },
        },
    },
}
