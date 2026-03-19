return {
    {
        "Vigemus/iron.nvim",
        cmd = { "IronAttach" },
        opts = {},
        keys = {
            { "<leader>sl", function() require("iron.core").send_line() end, desc = "Send line to REPL." },
            { "<leader>sf", function() require("iron.core").send_file() end, desc = "Send file to REPL." },
            { "<leader>ss", function() require("iron.core").visual_send() end, mode="v", desc = "Send selection to REPL." },
            { "<leader>tf", "<cmd>IronFocus<cr>", desc = "Focus terminal." },
            { "<leader>th", "<cmd>IronHide<cr>", desc = "Hide terminal." },
            { "<esc>", [[<C-\><C-n>]], mode="t", },
        },
        config = function(_, opts)
            local iron = require("iron.core")
            local view = require("iron.view")
            local common = require("iron.fts.common")

            local opts = {
                config = {
                    repl_open_cmd = view.split.botright("40%"),
                    repl_definition = {
                        sh = { command = { "bash" } },
                        python = {
                            command = { "python" },
                            format = common.bracketed_paste_python,
                            env = { PYTHON_BASIC_REPL = "1" },
                        },
                    },
                    repl_filetype = function(bufnr, ft)
                        return ft
                    end,
                },
            }
            iron.setup(opts)
        end,
    },
}
