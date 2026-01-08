return {
  'esmuellert/codediff.nvim',
  dependencies = { 'MunifTanjim/nui.nvim' },
  cmd = 'CodeDiff',
  keys = {
    -- stylua: ignore start
    { '<Leader>dv', '<cmd>CodeDiff<CR>', desc = 'Open CodeDiff', silent = true },
    -- stylua: ignore end
  },
  opts = {
    keymaps = {
      view = {
        next_file = '<Tab>',
        prev_file = '<S-Tab>',
      },
    },
  },
}
