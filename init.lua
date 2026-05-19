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
vim.opt.hlsearch = true
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.splitkeep = "screen"
vim.opt.nrformats = "blank"  -- inc/dec number format

-- Keymaps
vim.keymap.set("n", "<C-k>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
vim.keymap.set("n", "<C-j>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
vim.keymap.set("n", "<C-h>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
vim.keymap.set("n", "<C-l>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

vim.keymap.set("n", "<leader>tv", "<cmd>vertical terminal<cr>", { desc = "Create terminal in vertical split" } )

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<cr>")

vim.keymap.set("n", "gra", vim.lsp.buf.code_action, { desc = "Code action" })
vim.keymap.set("n", "grn", vim.lsp.buf.rename, { desc = "Rename" })

-- better indenting
vim.keymap.set("x", "<", "<gv")
vim.keymap.set("x", ">", ">gv")

-- configure diagnostic
vim.diagnostic.config({
    update_in_insert = false,
    severity_sort = true,
    float = { border = "rounded", source = "if_many" },
    underline = { severity = { min = vim.diagnostic.severity.ERROR } },
    virtual_text = false,
    virtual_lines = false,
    jump = { float = true },
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = " ",
            [vim.diagnostic.severity.WARN] = " ",
            [vim.diagnostic.severity.HINT] = " ",
            [vim.diagnostic.severity.INFO] = " ",
        }
    }
})

-- enable ui2 (experimental)
require("vim._core.ui2").enable({ enable = true })
