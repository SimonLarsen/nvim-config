return {
    {
        "Vigemus/iron.nvim",
        cmd = { "IronAttach" },
        opts = function()
            local iron = require("iron.core")
            local view = require("iron.view")
            local common = require("iron.fts.common")

            local opts = {
                config = {
                    repl_open_cmd = view.split.botright("40%"),
                    repl_definition = {
                        sh = {
                            command = {"bash"},
                        },
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
                keymaps = {
                    -- send_motion = "<leader>sc",
                    -- visual_send = "<leader>sc",
                    -- send_line = "<leader>sl",
                    -- send_file = "<leader>sf",
                },
            }
            return opts
        end,
        keys = function()
            local iron = require("iron.core")
            return {
                { "<leader>sl", iron.send_line, desc = "Send line to REPL." },
                { "<leader>sf", iron.send_file, desc = "Send file to REPL." },
                { "<leader>ss", iron.visual_send, mode="v", desc = "Send selection to REPL." },
                { "<esc>", [[<C-\><C-n>]], mode="t", },
            }
        end,
    },
}
