return {
  'sindrets/diffview.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  keys = {
    { '<Leader>dv', ':DiffviewOpen<CR>' },
    { '<Leader>dc', '<cmd>set hidden<CR><cmd>DiffviewClose<CR><cmd>set nohidden<CR>' },
    { '<Leader>dh', ':DiffviewFileHistory<CR>' },
    { '<Leader>dch', ':DiffviewFileHistory %<CR>' },
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
