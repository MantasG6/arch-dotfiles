return {
    {
        'MeanderingProgrammer/render-markdown.nvim',
        dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
        opts = {},
        keys = {
            {
                "<leader>pm",
                function() require('render-markdown').toggle() end,
                desc = "Toggle markdown preview"
            },
        },
    },
}
