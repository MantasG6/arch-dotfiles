return {
    {
        'nvim-treesitter/nvim-treesitter',
        lazy = false,
        build = ':TSUpdate',
        config = function()
            local ts = require("nvim-treesitter")

            -- 1. Install your parsers
            ts.install({
                "bash",
                "c",
                "diff",
                "html",
                "javascript",
                "jsdoc",
                "json",
                "lua",
                "luadoc",
                "luap",
                "markdown",
                "markdown_inline",
                "printf",
                "python",
                "query",
                "regex",
                "toml",
                "tsx",
                "typescript",
                "vim",
                "vimdoc",
                "xml",
                "yaml",
            })

            vim.api.nvim_create_autocmd("FileType", {
                callback = function()
                    -- 1. Highlighting
                    pcall(vim.treesitter.start)

                    -- 2. Folding (Window-local)
                    -- The [0][0] targets the current window and current tab
                    vim.wo[0][0].foldmethod = "expr"
                    vim.wo[0][0].foldexpr = "v:lua.vim.treesitter.foldexpr()"
                    -- prevent files from opening with all folds closed
                    vim.wo[0][0].foldlevel = 99

                    -- 3. Indentation (Buffer-local)
                    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
                end,
            })
        end,
    }
}
