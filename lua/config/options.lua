-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Add borders to diagnostic windows
vim.diagnostic.config({
  float = { border = 'single' },
})

-- Custom filetypes
vim.filetype.add({
  pattern = {
    ['.*/waybar/config'] = 'jsonc',
    ['.*/kitty/.+%.conf'] = 'bash',
    ['%.env%.[%w_.-]+'] = 'sh',
  },
  filename = {
    ['.commitlintrc'] = 'json',
    ['.czrc'] = 'json',
    ['.syncpackrc'] = 'json',
    ['.releaserc'] = 'json',
  },
})
