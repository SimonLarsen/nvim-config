return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {
            "basedpyright",
            "lua_ls",
        },
    },
    dependencies = {
        {
            "mason-org/mason.nvim",
            opts = {},
        },
        "neovim/nvim-lspconfig",
    },
    config=function(_, opts)
        require("mason-lspconfig").setup(opts)

        vim.diagnostic.config({
            underline = false,
            update_in_insert = false,
            severity_sort = true,
            signs = {
                text = {
                    [vim.diagnostic.severity.ERROR] = " ",
                    [vim.diagnostic.severity.WARN] = " ",
                    [vim.diagnostic.severity.HINT] = " ",
                    [vim.diagnostic.severity.INFO] = " ",
                }
            }
        })
    end,
}
