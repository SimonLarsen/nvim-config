return {
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = {
            delay = 100,
        },
        keys = {
            {
                "<leader>?",
                function()
                    require("which-key").show({ global = false })
                end,
                desc = "Buffer Local Keymaps (which-key)",
            },
        },
        config = function(_, opts)
            local wk = require("which-key")
            wk.setup(opts)
            wk.add({
                { "<leader>b", group="Buffers" },
                { "<leader>e", group="Explore files/symbols" },
                { "<leader>f", group="Find" },
                { "<leader>i", group="Inspect" },
                { "<leader>m", group="Markdown" },
                { "<leader>s", group="Send to REPL" },
                { "<leader>t", group="Terminal" },
            })
        end,
    },
}
