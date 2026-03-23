return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
        bufdelete = { enabled = true },
        indent = { enabled = true },
        statuscolumn = { enabled = true },
    },
}
