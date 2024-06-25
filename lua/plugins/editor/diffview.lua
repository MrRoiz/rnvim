return {
  'sindrets/diffview.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  keys = {
    { '<Leader>dv', '<cmd>DiffviewOpen<CR>', desc = 'Open Diffview', silent = true },
    {
      '<Leader>dcc',
      '<cmd>set hidden<CR><cmd>DiffviewClose<CR><cmd>set nohidden<CR>',
      desc = 'Close Diffview',
      silent = true,
    },
    { '<Leader>dh', '<cmd>DiffviewFileHistory<CR>', desc = 'Open Diffview file history', silent = true },
    { '<Leader>dch', '<cmd>DiffviewFileHistory %<CR>', desc = 'Open Diffview current file history', silent = true },
  },
  cmd = {
    'DiffviewClose',
    'DiffviewFileHistory',
    'DiffviewFocusFiles',
    'DiffviewLog',
    'DiffviewOpen',
    'DiffviewRefresh',
    'DiffviewToggleFiles',
  },
  opts = {
    view = {
      merge_tool = {
        layout = 'diff3_mixed',
      },
    },
  },
}
