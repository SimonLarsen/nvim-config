return {
    "folke/flash.nvim",
    event = "VeryLazy",
    ---@type Flash.Config
    opts = {
        multi_window = false,
        exclude = {
            "notify",
            "cmp_menu",
            "noice",
            "flash_prompt",
            "neo-tree",
            "iron",
            "trouble",
            function(win)
                -- exclude non-focusable windows
                return not vim.api.nvim_win_get_config(win).focusable
            end,
        },
    },
    keys = {
        { "<leader>j", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash jump" },
        { "<C-j>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash search" },
    },
}
