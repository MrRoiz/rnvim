return {
  'hrsh7th/nvim-cmp',
  version = false,
  event = 'InsertEnter',
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',

    -- Formatters
    'roobert/tailwindcss-colorizer-cmp.nvim',
    'onsails/lspkind.nvim',
  },
  opts = function()
    local cmp = require('cmp')
    require('tailwindcss-colorizer-cmp').setup({
      color_square_width = 2,
    })

    return {
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ['<Tab>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          else
            fallback()
          end
        end),
        ['<S-Tab>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          else
            fallback()
          end
        end),
      }),
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'buffer' },
        { name = 'path' },
      }),
      completion = {
        completeopt = 'menu,menuone,noinsert',
      },
      formatting = {
        format = require('lspkind').cmp_format({
          before = function (entry, vim_item)
            return require('tailwindcss-colorizer-cmp').formatter(entry, vim_item)
          end
        })
      },
    }
  end,
}
