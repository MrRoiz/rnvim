-- NOTE: This is a backup to quickly enable vtsls lsp it NEEDS to enable first the typescript extra in lazyvim
return {
  'neovim/nvim-lspconfig',
  opts = function(_, opts)
    opts.servers.vtsls.settings.typescript = {}
  end,
}
