return {
    {
        "Vigemus/iron.nvim",
        cmd = { "IronRepl", "IronFocus", "IronAttach" },
        opts = {},
        keys = {
            { "<leader>sl", function() require("iron.core").send_line() end, desc = "Send line to REPL." },
            { "<leader>sf", function() require("iron.core").send_file() end, desc = "Send file to REPL." },
            { "<leader>ss", function() require("iron.core").visual_send() end, mode="v", desc = "Send selection to REPL." },
            { "<leader>tf", "<cmd>IronFocus<cr>", desc = "Focus terminal." },
            { "<leader>tt", "<cmd>IronRepl<cr>", desc = "Toggle terminal." },
            { "<esc>", [[<C-\><C-n>]], mode="t", },
        },
        config = function(_, opts)
            local iron = require("iron.core")
            local view = require("iron.view")
            local common = require("iron.fts.common")

            local function expandtab(s, width)
                -- Replaces tabs in indentation with spaces
                _, ws_end = string.find(s, "%s*")
                ws = string.sub(s, 1, ws_end)
                ws = ws:gsub("\t", string.rep(" ", width))
                return ws .. string.sub(s, ws_end+1)
            end

            local function fixed_format(lines, extra)
                if #lines == 0 then
                    return common.bracketed_paste_python(lines, extra)
                end

                -- Get indentation width in first lines
                line = lines[1]
                _, ws_end = string.find(line, "^%s*")
                ws = expandtab(string.sub(line, 1, ws_end), 4)
                ws_count = #ws

                -- Remove equivalent amount of indentation in all lines
                fixed = {}
                for _, line in ipairs(lines) do
                    line = expandtab(line, 4)
                    line = string.sub(line, ws_count + 1)
                    table.insert(fixed, line)
                end
                return common.bracketed_paste_python(fixed, extra)
            end

            local opts = {
                config = {
                    repl_open_cmd = view.split("40%"),
                    repl_definition = {
                        sh = { command = { "bash" } },
                        python = {
                            command = { "python" },
                            format = fixed_format,
                            env = { PYTHON_BASIC_REPL = "1" },
                        },
                        lua = { command = { "lua" } },
                    },
                    repl_filetype = function(bufnr, ft)
                        return "iron"
                    end,
                },
            }
            iron.setup(opts)

            vim.api.nvim_create_autocmd(
                "WinEnter",
                {
                    callback = function()
                        if vim.bo.filetype ~= "iron" then
                            return
                        end

                        vim.cmd[[startinsert]]
                    end,
                }
            )
        end,
    },
}
