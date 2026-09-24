return {
    "rachartier/tiny-cmdline.nvim",
    opts = {
        on_reposition = require("tiny-cmdline").adapters.blink,
    },
    init = function()
        vim.o.cmdheight = 0
    end,
}
