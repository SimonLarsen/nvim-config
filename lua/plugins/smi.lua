return {
    "SimonLarsen/smi.nvim",
    cmd = { "SMIToggle" },
    opts = {
        interval = 1000,
        properties = {
            "index",
            "utilization.gpu",
            "memory.used",
            "memory.total",
            "temperature.gpu",
        },
        separators = { "│", "│", "/", "│" },
        suffixes = { "", "", "", "", " C" },
    },
}
