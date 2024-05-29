return {
  'hrsh7th/nvim-cmp',
  opts = function(_, opts)
    local cmp = require('cmp')

    opts.experimental.ghost_text = false
    opts.window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    }
  end,
}
