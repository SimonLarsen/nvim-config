return {
    {
        "Mofiqul/dracula.nvim",
        priority = 1000,
        lazy = false,
        opts = {},
        config = function(_, opts)
            local dracula = require("dracula")
            dracula.setup(opts)
            dracula.load()
        end,
    },
}
