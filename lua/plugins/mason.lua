local language_utils = require('core.utils.language')

return {
  {
    'williamboman/mason.nvim',
    opts = {
      ui = {
        border = 'single',
        icons = {
          package_installed = '✓',
          package_pending = '➜',
          package_uninstalled = '✗',
        },
      },
    },
  },
  {
    'williamboman/mason-lspconfig.nvim',
    dependencies = {
      'williamboman/mason.nvim',
    },
    opts = function()
      local LSP_SERVERS = language_utils.parse_installable_lsp_servers()
      local parsed_lsp_servers = {}

      for _, lsp in ipairs(LSP_SERVERS) do
        table.insert(parsed_lsp_servers, lsp)
      end

      return {
        ensure_installed = parsed_lsp_servers,
        automatic_installation = true,
      }
    end,
  },
}
