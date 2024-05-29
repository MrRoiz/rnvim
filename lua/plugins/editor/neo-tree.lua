return {
  'nvim-neo-tree/neo-tree.nvim',
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
    filesystem = {
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignored = true,
        hide_hidden = false,
      },
      follow_current_file = {
        enabled = true,
      },
    },
  },
}
