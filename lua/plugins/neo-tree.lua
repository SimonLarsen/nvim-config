return {
    "nvim-neo-tree/neo-tree.nvim",
    lazy = false,
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        "nvim-tree/nvim-web-devicons",
    },
    ---@module 'neo-tree'
    ---@type neotree.Config
    opts = {
        theme = "dracula",
        sources = { "filesystem" },
        open_files_do_not_replace_types = { "terminal", "Trouble", "trouble", "qf", "edgy" },
        enable_cursor_hijack = true,
        window = {
            mappings = {
                ["l"] = "open",
                ["h"] = "close_node",
                ["<space>"] = "none",
            }
        }
    },
    keys = {
        {
            "<leader>ef",
            function()
                require("neo-tree.command").execute({
                    action = "focus",
                    source = "filesystem",
                    position = "left",
                    toggle = false,
                    dir = vim.uv.cwd(),
                })
            end,
            desc = "Open and focus tree (cwd)",
        },
        {
            "<leader>et",
            function()
                require("neo-tree.command").execute({
                    action = "show",
                    source = "filesystem",
                    position = "left",
                    toggle = true,
                    dir = vim.uv.cwd(),
                })
            end,
            desc = "Toggle tree (cwd)",
        },
    },
}
