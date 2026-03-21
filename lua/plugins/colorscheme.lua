return {
    "Mofiqul/dracula.nvim",
    priority = 2000,
    lazy = false,
    config = function()
        vim.cmd[[colorscheme dracula]]
    end,
}
