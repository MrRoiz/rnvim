-- NOTE: These options here will be set in vim.opt

local indendtSize = 2

return {
    clipboard = "unnamedplus",

    -- relativenumber = true
    nu = true,
    cursorline = true,
    termguicolors = true,

    -- Text
    expandtab = true,
    softtabstop = indendtSize,
    shiftwidth = indendtSize,
    tabstop = indendtSize,
    smartindent = true,
    wrap = false,

    -- Highlighting
    spell = true,

    -- Search Options
    hlsearch = true,
    ignorecase = true,
    smartcase = true,
    incsearch = true,
}
