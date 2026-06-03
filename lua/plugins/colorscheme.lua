return {
    {
        "Mofiqul/dracula.nvim",
        priority = 1000,
        lazy = false,
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        lazy = false,
        config = function(_, opts)
            vim.cmd[[colorscheme catppuccin-macchiato]]
        end,
    },
}
