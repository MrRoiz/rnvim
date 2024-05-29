-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set({ 'n', 'i' }, '<Tab>', '>>', { silent = true, desc = 'Add indent to line' })
vim.keymap.set('v', '<Tab>', '>gv', { silent = true, desc = 'Add indent to selection' })

vim.keymap.set({ 'n', 'i' }, '<S-Tab>', '<<', { silent = true, desc = 'Remove indent to line' })
vim.keymap.set('v', '<S-Tab>', '<gv', { silent = true, desc = 'Remove indent to selection' })

vim.keymap.set({ 'n', 'v' }, '<C-S-j>', '10j', { silent = true, desc = 'Move faster down' })
vim.keymap.set({ 'n', 'v' }, '<C-S-k>', '10k', { silent = true, desc = 'Move faster up' })

vim.keymap.set('i', '<C-b>', '<esc>^i', { silent = true, desc = 'Go to the beggining of the line in insert mode' })
vim.keymap.set('i', '<C-e>', '<end>', { silent = true, desc = 'Go to the end of the line in insert mode' })
