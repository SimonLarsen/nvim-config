return {
    "folke/trouble.nvim",
    opts = {},
    cmd = "Trouble",
    keys = {
        { "<leader>id", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "Diagnostics" },
        { "<leader>is", "<cmd>Trouble symbols toggle focus=false win.position=bottom<cr>", desc = "Symbols" },
        { "grr", "<cmd>Trouble lsp_references focus=true<cr>", desc = "References"},
        { "grd", "<cmd>Trouble lsp_definitions focus=true<cr>", desc = "Definition(s)" },
        { "gri", "<cmd>Trouble lsp_implementations focus=true<cr>", desc = "Implementation(s)" },
        { "grt", "<cmd>Trouble lsp_type_definitions focus=true<cr>", desc = "Type definition(s)" },
    },
}
