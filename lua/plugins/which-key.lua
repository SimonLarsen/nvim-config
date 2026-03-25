return {
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
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
                { "<leader>e", group="Explore files/symbols" },
                { "<leader>b", group="Buffers" },
                { "<leader>s", group="Send to REPL" },
                { "<leader>t", group="Terminal" },
                { "<leader>i", group="Inspect" },
                { "<leader>f", group="Find" },
                {
                    "<leader>in",
                    function()
                        local handle = io.popen("nvidia-smi")
                        local result = handle:read("*a")
                        handle:close()
                        vim.notify(result)
                    end,
                    desc = "Print nvidia-smi",
                },
            })
        end,
    },
}
