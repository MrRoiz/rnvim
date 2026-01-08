return {
  'Saghen/blink.cmp',
  enabled = true,
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    completion = {
      ghost_text = {
        enabled = false,
      },
      menu = {
        border = 'single',
      },
      documentation = {
        window = {
          border = 'single',
        },
      },
    },
    sources = {
      default = {
        'lsp',
        'path',
        'buffer',
      },
    },
  },
}
