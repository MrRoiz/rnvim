return {
  { 'Shatur/neovim-ayu' },
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
