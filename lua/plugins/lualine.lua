local function macro()
    local reg = vim.fn.reg_recording()
    if reg == "" then
        return ""
    else
        return "recording to " .. reg
    end
end

return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
        extensions = {"neo-tree", "trouble"},
        sections = {
            lualine_a = {"mode", macro},
            lualine_b = {"branch", "diff", "diagnostics"},
            lualine_c = {"filename"},
            lualine_x = {"encoding", "fileformat", "filetype"},
            lualine_y = {"progress"},
            lualine_z = {"location"}
        },
        inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = {"filename"},
            lualine_x = {"location"},
            lualine_y = {},
            lualine_z = {}
        },
    },
}
