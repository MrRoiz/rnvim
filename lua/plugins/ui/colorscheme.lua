return {
  -- Disable unused colorshemes
  { 'folke/tokyonight.nvim', enabled = false },
  { 'catppuccin/nvim', enabled = false },

  -- Config actual colorscheme used and lualine
  { 'Shatur/neovim-ayu', lazy = true },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'Shatur/neovim-ayu' },
    opts = {
      options = { theme = 'ayu_dark' },
    },
  },
  {
    'LazyVim/LazyVim',
    opts = {
      colorscheme = 'ayu',
    },
  },
}
