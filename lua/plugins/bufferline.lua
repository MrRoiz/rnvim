return {
    "akinsho/bufferline.nvim",
    dependencies = {
        "nvim-tree-nvim-web-devicons"
    },
    opts = {
        options = {
            diagnostics = "nvim_lsp",
            offsets = {
                {
                    filetype = "NvimTree",
                    text = "File Explorer",
                    text_align = "center",
                    separator = true,
                },
                {
                    filetype = "DiffviewFiles",
                    text = "Source Control",
                    text_align = "center",
                    separator = true,
                },
            },
            separator_style = "slant",
        },
    },
}
