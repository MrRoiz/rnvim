return {
  -- Disable unused colorshemes
  { 'folke/tokyonight.nvim', enabled = false },
  { 'catppuccin/nvim', enabled = false },

  -- Config actual colorscheme used and lualine
  {
    'Shatur/neovim-ayu',
    name = 'ayu',
    lazy = true,
    opts = {
      overrides = {
        -- Add suprt for flash.nvim
        FlashBackdrop = { fg = '#545c7e' },
        FlashCurrent = { bg = '#ff966c', fg = '#1b1d2b' },
        FlashLabel = { bg = '#ff007c', bold = true, fg = '#c8d3f5' },
        FlashMatch = { bg = '#3e68d7', fg = '#c8d3f5' },
        FlashCursor = { reverse = true },
      },
    },
  },
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
      colorscheme = 'ayu-dark',
    },
  },
}
