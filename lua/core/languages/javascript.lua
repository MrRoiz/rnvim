return {
  lsp = {
    {
      server = 'tsserver',
      plugin = {
        'pmizio/typescript-tools.nvim',
        dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
        opts = {
          on_attach = function(client, bufnr)
            require('core.utils.editor').load_mappings('lsp_config', { noremap = true, buffer = bufnr })
          end,
        },
      },
    },
    {
      server = 'tailwindcss',
      server_opts = {
        -- This config will avoid to trigger tailwindcss lsp when it is not configured in the project
        root_dir = function(fname)
          local util = require('lspconfig.util')
          return util.root_pattern(
            'tailwind.config.js',
            'tailwind.config.ts',
            'tailwind.config.cjs',
            'tailwind.js',
            'tailwind.ts',
            'tailwind.cjs'
          )(fname)
        end,
      },
    },
    {
      server = 'eslint',
    },
  },
  treesitter = { 'tsx', 'javascript', 'typescript', 'jsdoc', 'prisma' },
  formatter = {
    typescript = { 'prettier' },
    typescriptreact = { 'prettier' },
    javascript = { 'prettier' },
    javascriptreact = { 'prettier' },
  },
}
