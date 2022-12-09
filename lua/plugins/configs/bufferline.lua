return function()
    local ok, bufferline = pcall(require, "bufferline")
    if not ok then
        return
    end

    vim.opt.termguicolors = true
    bufferline.setup({
        options = {
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
    })
end
