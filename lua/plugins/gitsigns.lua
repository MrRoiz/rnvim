return {
  'lewis6991/gitsigns.nvim',
  opts = {
    current_line_blame_formatter = '<author>, at <author_time:%Y-%m-%d> - <summary>',
    current_line_blame = true,
    current_line_blame_opts = {
      delay = 600,
    },
    signs = {
      add = { text = '▎' },
      change = { text = '▎' },
      delete = { text = '' },
      topdelete = { text = '' },
      changedelete = { text = '▎' },
      untracked = { text = '▎' },
    },
  },
}
