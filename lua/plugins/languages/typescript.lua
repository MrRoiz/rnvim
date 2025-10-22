local keymaps = {
  toggle = '<leader>cbd', -- default '<leader>dd'
  go_to_definition = '<leader>cbx', -- default '<leader>dx'
}

return {
  {
    'neovim/nvim-lspconfig',
    opts = function(_, opts)
      opts.servers.vtsls.settings.typescript = {}
      opts.servers.eslint = {
        settings = {
          -- helps eslint find the eslintrc when it's placed in a subfolder instead of the cwd root
          workingDirectories = { mode = 'auto' },
        },
      }
    end,
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
