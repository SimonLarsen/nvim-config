return {
    "saghen/blink.cmp",
    version = "1.*",
    opts = {
        appearance = {
            nerd_font_variant = "mono",
        },
        completion = {
            keyword = { range = "full" },
            accept = { auto_brackets = { enabled = true } },
            ghost_text = { enabled = false },
        },
        signature = { enabled = true },
        keymap = {
            preset = "enter",
        },
    },
    opts_extend = { "sources.default" },
}
