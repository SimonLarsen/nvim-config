return {
    "OXY2DEV/markview.nvim",
    lazy = false,
    dependencies = { "saghen/blink.cmp" },
    opts = {
        preview = { enable = false },
    },
    keys = {
        { "<leader>m", "<cmd>Markview splitToggle<cr>", desc = "Toggle markdown preview (split)" },
    }
}
