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
  opts = function()
    local actions = require('diffview.actions')
    return {
      view = {
        merge_tool = {
          layout = 'diff3_mixed',
        },
      },
      keymaps = {
        view = {
          -- NOTE: Added a `d` key at the beggining of each keymap to avoid conflicts
          -- stylua: ignore start
          { "n", "<leader>dco",  actions.conflict_choose("ours"),        { desc = "Choose the OURS version of a conflict" } },
          { "n", "<leader>dct",  actions.conflict_choose("theirs"),      { desc = "Choose the THEIRS version of a conflict" } },
          { "n", "<leader>dcb",  actions.conflict_choose("base"),        { desc = "Choose the BASE version of a conflict" } },
          { "n", "<leader>dca",  actions.conflict_choose("all"),         { desc = "Choose all the versions of a conflict" } },
          { "n", "<leader>ddx",  actions.conflict_choose("none"),        { desc = "Delete the conflict region" } },
          { "n", "<leader>dcO",  actions.conflict_choose_all("ours"),    { desc = "Choose the OURS version of a conflict for the whole file" } },
          { "n", "<leader>dcT",  actions.conflict_choose_all("theirs"),  { desc = "Choose the THEIRS version of a conflict for the whole file" } },
          { "n", "<leader>dcB",  actions.conflict_choose_all("base"),    { desc = "Choose the BASE version of a conflict for the whole file" } },
          { "n", "<leader>dcA",  actions.conflict_choose_all("all"),     { desc = "Choose all the versions of a conflict for the whole file" } },
          { "n", "<leader>ddX",  actions.conflict_choose_all("none"),    { desc = "Delete the conflict region for the whole file" } },
          -- stylua: ignore end
        },
      },
    }
  end,
}
