return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            'saghen/blink.cmp',
            {
                "folke/lazydev.nvim",
                ft = "lua", -- only load for lua files
                opts = {
                    library = {
                        -- See the configuration section for more details
                        -- Load luvit types when the `vim.uv` word is found
                        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                    },
                },
            },
        },
    },
    {
        'saghen/blink.cmp',
        dependencies = { 'rafamadriz/friendly-snippets' },

        version = '1.*',

        opts = {
            keymap = { preset = 'default' },

            appearance = {
                nerd_font_variant = 'mono'
            },

            fuzzy = { implementation = "prefer_rust_with_warning" },

            signature = { enabled = true },
        },
    }
}
