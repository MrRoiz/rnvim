return {
  {
    'nvim-treesitter/nvim-treesitter',
    opts = function(_, opts)
      if type(opts.ensure_installed) == 'table' then
        vim.list_extend(opts.ensure_installed, { 'typescript', 'tsx' })
      end
    end,
  },
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      {
        'pmizio/typescript-tools.nvim',
        dependencies = {
          'nvim-lua/plenary.nvim',
          'neovim/nvim-lspconfig',
        },
      },
    },
    opts = {
      servers = {
        tsserver = {
          on_attach = function()
            LazyVim.lsp.on_attach(function(client, buffer)
              require('lazyvim.plugins.lsp.keymaps').on_attach(client, buffer)
            end)
          end,
        },
      },
      setup = {
        tsserver = function(_, opts)
          require('typescript-tools').setup(opts)
          return true
        end,
      },
    },
  },
}
