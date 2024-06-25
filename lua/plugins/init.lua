return {
  -- Languages that requires a custom config
  require('plugins.languages.typescript'),
  require('plugins.languages.json'),
  require('plugins.languages.markdown'),
  require('plugins.languages.bash'),
  require('plugins.languages.sql'),

  -- UI
  require('plugins.ui.colorscheme'),
  require('plugins.ui.dashboard'),
  require('plugins.ui.noice'),
  require('plugins.ui.bufferline'),

  -- Formatters
  require('plugins.formatting.conform'),

  -- Coding
  require('plugins.coding.nvim-cmp'),
  require('plugins.coding.nvim-snippets'),

  -- Editor
  require('plugins.editor.neo-tree'),
  require('plugins.editor.mini-move'),
  require('plugins.editor.diffview'),

  -- LSP
  require('plugins.lsp.mason'),
}
