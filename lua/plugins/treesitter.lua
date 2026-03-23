local LANGUAGES = {
    "bash",
    "python",
    "lua",
    "markdown",
    "yaml",
}

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
            ts.install(LANGUAGES)

            vim.api.nvim_create_autocmd("FileType", {
                pattern = LANGUAGES,
                callback = function()
                    vim.treesitter.start()
                    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
                end,
            })
        end,
    }
}
