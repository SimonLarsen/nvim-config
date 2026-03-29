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
}
