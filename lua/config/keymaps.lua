-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set({ 'n', 'v' }, '<C-S-j>', '10j', { silent = true, desc = 'Move faster down' })
vim.keymap.set({ 'n', 'v' }, '<C-S-k>', '10k', { silent = true, desc = 'Move faster up' })

vim.keymap.set('i', '<C-b>', '<esc>^i', { silent = true, desc = 'Go to the beggining of the line in insert mode' })
vim.keymap.set('i', '<C-e>', '<end>', { silent = true, desc = 'Go to the end of the line in insert mode' })

-- floating remaping terminal start
local lazyterm = function()
  LazyVim.terminal(nil, {
    cwd = LazyVim.root(),
    size = {
      width = 150,
      height = 30,
    },
    border = 'rounded',
  })
end

vim.keymap.del('n', '<leader>ft')
vim.keymap.del('n', '<leader>fT')
vim.keymap.del('n', '<c-/>')
vim.keymap.del('n', '<c-_>')

vim.keymap.set('n', '<leader>ft', lazyterm, { desc = 'Terminal (Root Dir)' })

-- floating remaping terminal end
