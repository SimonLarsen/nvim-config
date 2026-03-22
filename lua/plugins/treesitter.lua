return {
    {
        "nvim-treesitter/nvim-treesitter",
        lazy = false,
        build = ":TSUpdate",
        opts = {
            ensure_installed = {
                "bash",
                "python",
                "lua",
                "markdown",
            },
        },
        config = function(_, opts)
            require("nvim-treesitter").setup(opts)

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
