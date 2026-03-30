return {
    "OXY2DEV/markview.nvim",
    lazy = false,
    dependencies = { "saghen/blink.cmp" },
    opts = {
        preview = { enable = false },
    },
    keys = {
        { "<leader>mp", "<cmd>Markview toggle<cr>", desc = "Toggle markdown preview (buffer)" },
        { "<leader>ms", "<cmd>Markview splitToggle<cr>", desc = "Toggle markdown preview (split)" },
    }
}
