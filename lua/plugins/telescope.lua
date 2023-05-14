return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    cmd = { "Telescope" },
    opts = {
        extensions_list = { "themes" },
        defaults = {
            file_ignore_patterns = {
                "node_modules",
                "venv",
                ".git",
                ".cache",
                "%.o",
                "%.a",
                "%.out",
                "%.class",
                "%.pdf",
                "%.mkv",
                "%.mp4",
                "%.zip"
            },
        },
    },
}
