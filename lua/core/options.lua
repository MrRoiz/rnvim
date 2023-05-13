local opt = vim.opt
local g = vim.g

-- Avoid to open up Explore
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

opt.clipboard = "unnamedplus"

-- Interface
g.background = "dark"
-- opt.relativenumber = true
opt.nu = true
opt.cursorline = true
opt.termguicolors = true

-- Text
opt.expandtab = true
opt.softtabstop = 4
opt.shiftwidth = 4
opt.tabstop = 4
opt.smartindent = true
opt.wrap = false

-- Highlighting
-- opt.spell = true

-- Search Options
opt.hlsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true

