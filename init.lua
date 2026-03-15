require("config.lazy")

-- General options
vim.opt.cursorline = true  -- Highlight current line
vim.opt.expandtab = true  --  Use spaces instead of tabs
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.mouse = "a"  -- Enable mouse mode
vim.opt.number = true  -- Show line number
vim.opt.termguicolors = true  -- True color support
vim.opt.wrap = false

-- Keymaps
vim.keymap.set("n", "<C-k>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
vim.keymap.set("n", "<C-j>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
vim.keymap.set("n", "<C-h>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
vim.keymap.set("n", "<C-l>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- Setup plugins
vim.cmd[[colorscheme dracula]]

require("nvim-treesitter").setup{
    install_dir = vim.fn.stdpath('data') .. '/site',
}

require("nvim-treesitter").install{ "python" }

require("bufferline").setup{}

require("lualine").setup{}

require("neo-tree").setup{
    options = {
        theme = "dracula",
    }
}
