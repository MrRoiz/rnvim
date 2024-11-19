return {
  'stevearc/conform.nvim',
  -- optional = true,
  opts = {
    formatters_by_ft = {
      -- ruff is already installed by python extra in LazyVim
      ['python'] = { 'ruff' },
    },
  },
}
