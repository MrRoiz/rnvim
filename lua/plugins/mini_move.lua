return {
  'echasnovski/mini.move',
  opts = {
    mappings = {
      left = '<S-Tab>',
      right = '<Tab>',
      line_left = '<S-Tab>',
      line_right = '<Tab>',
    },
  },
  config = function(plugin, opts)
    require('mini.move').setup(opts)
  end,
}
