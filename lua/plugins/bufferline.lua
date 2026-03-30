return {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {
        options = {
            close_command = function(n) Snacks.bufdelete(n) end,
            right_mouse_command = function(n) Snacks.bufdelete(n) end,
            show_buffer_close_icons = false,
            show_close_icon = false,
            separator_style = "thick",
            offsets = {
                {
                    filetype = "neo-tree",
                    text = "Neo-tree",
                    separator = true,
                },
                {
                    filetype = "snacks_layout_box",
                },
            },
        },
    },
    keys={
        { "<S-h>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev buffer" },
        { "<S-l>", "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
        { "<leader>bf", "<cmd>BufferLinePick<cr>", desc = "Pick buffer" },
        { "<leader>bd", function() Snacks.bufdelete() end, desc = "Close buffer" },
        { "<leader>bc", "<cmd>BufferLinePickClose<cr>", desc = "Pick buffer to close" },
    },
}
