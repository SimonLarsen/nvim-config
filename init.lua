require("config.lazy")

-- General options
vim.opt.cursorline = true  -- Highlight current line
vim.opt.expandtab = true  --  Use spaces instead of tabs
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.mouse = "a"  -- Enable mouse mode
vim.opt.number = true  -- Show line number
vim.opt.signcolumn = "yes"  -- Reserve space in gutter for signs
vim.opt.termguicolors = true  -- True color support
vim.opt.wrap = false
vim.opt.smartcase = true
vim.opt.ignorecase = true  -- Ignore case when searching
vim.opt.hlsearch = false

-- Keymaps
vim.keymap.set("n", "<C-k>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
vim.keymap.set("n", "<C-j>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
vim.keymap.set("n", "<C-h>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
vim.keymap.set("n", "<C-l>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- better indenting
vim.keymap.set("x", "<", "<gv")
vim.keymap.set("x", ">", ">gv")
