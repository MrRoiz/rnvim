return {
  'Saghen/blink.cmp',
  enabled = true,
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    appearance = {
      -- Sets the fallback highlight groups to nvim-cmp's highlight groups
      -- Useful for when your theme doesn't support blink.cmp
      -- Will be removed in a future release
      use_nvim_cmp_as_default = true,
    },
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
