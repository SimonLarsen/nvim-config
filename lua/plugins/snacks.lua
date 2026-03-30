return {
    "folke/snacks.nvim",
    priority = 500,
    lazy = false,
    ---@type snacks.Config
    opts = {
        bigfile = { enabled = true },
        quickfile = { enabled = true },
        bufdelete = { enabled = true },
        indent = { enabled = true },
        picker = { enabled = true },
        statuscolumn = { enabled = true },
    },
    keys = {
        { "<leader>ff", function() Snacks.picker.files() end, desc = "Find files" },
        { "<leader>fg", function() Snacks.picker.grep() end, desc = "Grep files" },
        { "<leader>fh", function() Snacks.picker.help() end, desc = "Help pages" },
        { "<leader>fs", function() Snacks.picker.lsp_symbols() end, desc = "LSP workspace symbols" },
    },
}
