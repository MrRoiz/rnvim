-- magazine.nvim is a fork considered as a BETA that merges PR faster than the base repo

return {
  -- 'iguanacucumber/magazine.nvim',
  -- name = 'nvim-cmp',
  'hrsh7th/nvim-cmp',
  enabled = false,
  opts = function(_, opts)
    local cmp = require('cmp')

    opts.experimental.ghost_text = false
    opts.window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    }

    opts.mapping = cmp.mapping.preset.insert({
      ['<Tab>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
      ['<S-Tab>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
      ['<C-n>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
      ['<C-p>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = LazyVim.cmp.confirm(),
      ['<S-CR>'] = LazyVim.cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
      ['<C-CR>'] = function(fallback)
        cmp.abort()
        fallback()
      end,
    })
  end,
}
