return {
    "folke/edgy.nvim",
    event = "VeryLazy",
    opts = {
        options = {
            left = { size = 40 },
            bottom = { size = 30 },
            right = { size = 40 },
            top = { size = 30 },
        },
        animate = { enabled = false },
        exit_when_last = true,
        wo = { winbar = false },
        keys = {
            ["q"] = false,
            ["<c-q>"] = false,
            ["Q"] = false,
            ["]w"] = false,
            ["[w"] = false,
            ["]W"] = false,
            ["[W"] = false,
            ["<c-w>>"] = false,
            ["<c-w><lt>"] = false,
            ["<c-w>+"] = false,
            ["<c-w>-"] = false,
            ["<c-w>="] = false,
        },
        left = {
            "neo-tree",
        },
        bottom = {
            "iron",
            "Trouble",
            "trouble",
        }
    },
}
