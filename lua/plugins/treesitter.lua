return {
    {
        "nvim-treesitter/nvim-treesitter",
        lazy = false,
        build = ":TSUpdate",
        opts = {
        },
        config = function(_, opts)
            local ts = require("nvim-treesitter")
            ts.setup(opts)
            ts.install({ "bash", "python", "lua", "markdown" })

            vim.api.nvim_create_autocmd("FileType", {
                pattern = { "python", "lua" },
                callback = function()
                    vim.treesitter.start()
                    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
                end,
            })
        end,
    }
}
