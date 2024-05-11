local icons = require('config.icons')

return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
    '3rd/image.nvim',
  },
  opts = {
    event_handlers = {
      {
        event = 'file_opened',
        handler = function(file_path)
          -- auto close
          require('neo-tree.command').execute({ action = 'close' })
        end,
      },
    },
    default_component_configs = {
      git_status = {
        symbols = {
          added = icons.git.added,
          modified = icons.git.modified,
          deleted = icons.git.deleted,
          renamed = icons.git.renamed,
          untracked = icons.git.untracked,
          ignored = icons.git.ignored,
          unstaged = icons.git.unstaged,
          staged = icons.git.staged,
          conflict = icons.git.conflict,
        },
      },
    },
    filesystem = {
      filtered_items = {
        visible = true,
      },
    },
  },
}
