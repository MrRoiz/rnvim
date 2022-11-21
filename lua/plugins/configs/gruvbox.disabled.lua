return function ()
    local ok, gruvbox = pcall(require, 'gruvbox')
    if not ok then
        return
    end

    gruvbox.setup({
        undercurl = false,
        underline = false,
        bold = false,
        italic = false,
        strikethrough = false,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = false, -- invert background for search, diffs, statuslines and errors
        contrast = "hard", -- can be "hard", "soft" or empty string
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = false,
    })

    vim.cmd('colorscheme gruvbox')
end
