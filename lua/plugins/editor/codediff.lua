return {
  'esmuellert/codediff.nvim',
  dependencies = { 'MunifTanjim/nui.nvim' },
  cmd = 'CodeDiff',
  keys = {
    -- stylua: ignore start
    { '<Leader>dv', '<cmd>CodeDiff<CR>', desc = 'Open CodeDiff', silent = true },
    { '<Leader>dh', '<cmd>CodeDiff history<CR>', desc = 'Open CodeDiff History', silent = true },
    { '<Leader>dch', '<cmd>CodeDiff history %<CR>', desc = 'Open Current File Commit history', silent = true },
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
