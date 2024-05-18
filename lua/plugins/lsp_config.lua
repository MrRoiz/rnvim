local editor_utils = require('core.utils.editor')

return {
  'neovim/nvim-lspconfig',
  dependencies = {
    { 'folke/neodev.nvim', opts = {} },
  },
  opts = {
    on_attach = function(client, bufnr)
      editor_utils.load_mappings('lsp_config', { noremap = true, buffer = bufnr })
    end,
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
    diagnostics = {
      underline = true,
      update_in_insert = false,
      virtual_text = require('config.diagnostics').virtual_text,
      severity_sort = true,
    },
  },
  config = function(plugin, opts)
    local lspconfig = require('lspconfig')
    local common_utils = require('core.utils.common')
    local LSP_SERVERS = require('core.utils.language').parse_configurable_lsp_servers()
    editor_utils.set_diagnostic_config()
    require('neodev').setup()

    for _, lsp_definition in pairs(LSP_SERVERS) do
      local setup = {
        on_attach = opts.on_attach,
        capabilities = opts.capabilities,
      }

      if common_utils.table_contains(lsp_definition, 'server_opts') then
        setup = vim.tbl_extend('error', setup, lsp_definition.server_opts)
      end

      lspconfig[lsp_definition['server']].setup(setup)
    end

    vim.diagnostic.config(vim.deepcopy(opts.diagnostics))
  end,
}
