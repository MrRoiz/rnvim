local keymaps = {
  toggle = '<leader>cbd', -- default '<leader>dd'
  go_to_definition = '<leader>cbx', -- default '<leader>dx'
}

-- TS LSP (native tsc) is provided by the
-- `lazyvim.plugins.extras.lang.typescript.tsc` extra (see lazyvim.json).
-- This file only overrides tsc settings and adds better-ts-errors on top.

return {
  {
    'neovim/nvim-lspconfig',
    opts = {
      servers = {
        tsc = {
          settings = {
            ['js/ts'] = {
              inlayHints = {
                enumMemberValues = { enabled = false },
                functionLikeReturnTypes = { enabled = false },
                parameterNames = { enabled = false },
                parameterTypes = { enabled = false },
                propertyDeclarationTypes = { enabled = false },
                variableTypes = { enabled = false },
              },
            },
          },
        },
      },
    },
  },
  {
    'OlegGulevskyy/better-ts-errors.nvim',
    dependencies = { 'MunifTanjim/nui.nvim' },
    keys = {
      { keymaps.toggle, desc = 'better-ts-errors: Toggle error modal on the error under cursor' },
      { keymaps.go_to_definition, desc = 'better-ts-errors: Go to definition of the error under cursor' },
    },
    -- TODO: Add file types for ts files
    opts = {
      keymaps = keymaps,
    },
  },
}
