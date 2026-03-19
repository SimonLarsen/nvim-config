return {
    "folke/trouble.nvim",
    opts = {},
    cmd = "Trouble",
    keys = {
        {
            "<leader>id",
            "<cmd>Trouble diagnostics toggle<cr>",
            desc = "Diagnostics (Trouble)",
        },
        {
            "<leader>is",
            "<cmd>Trouble symbols toggle<cr>",
            desc = "Symbols (Trouble)",
        }
    },
}
