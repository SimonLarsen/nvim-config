return {
    "rachartier/tiny-cmdline.nvim",
    config = function()
        vim.o.cmdheight = 0
        local M = require("tiny-cmdline")
        M.setup({
            on_reposition = M.adapters.blink,
        })
    end,
}
