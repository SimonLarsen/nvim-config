return {
    {
        "akinsho/bufferline.nvim",
        lazy = false,
        version = "*",
        dependencies = "nvim-tree/nvim-web-devicons",
        opts = {},
        keys={
            { "<S-h>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev buffer" },
            { "<S-l>", "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
            { "<leader>bf", "<cmd>BufferLinePick<cr>", desc = "Pick buffer" },
            { "<leader>bc", "<cmd>BufferLinePickClose<cr>", desc = "Pick buffer to close" },
        },
    },
    {
        'nvim-lualine/lualine.nvim',
        lazy = false,
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        opts = {},
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        lazy = false,
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            "nvim-tree/nvim-web-devicons", -- optional, but recommended
        },
        ---@module 'neo-tree'
        ---@type neotree.Config
        opts = {
            theme = "dracula",
        },
        keys = {
            {
                "<leader>tf",
                function()
                    require("neo-tree.command").execute({ toggle = true, dir = vim.uv.cwd() })
                end,
                desc = "NeoTree filesystem (cwd)",
            },
        },
    },
    {
        "Vigemus/iron.nvim",
    },
}
