return {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {},
    keys={
        { "<S-h>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev buffer" },
        { "<S-l>", "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
        { "<leader>bf", "<cmd>BufferLinePick<cr>", desc = "Pick buffer" },
        { "<leader>bd", function() Snacks.bufdelete.delete() end, desc = "Close buffer" },
        { "<leader>bc", "<cmd>BufferLinePickClose<cr>", desc = "Pick buffer to close" },
    },
}
