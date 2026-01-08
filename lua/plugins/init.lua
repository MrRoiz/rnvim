return {
  -- Languages that requires a custom config
  require('plugins.languages.typescript'),
  require('plugins.languages.markdown'),
  require('plugins.languages.sql'),
  require('plugins.languages.java'),
  require('plugins.languages.dbml'),
  require('plugins.languages.css'),
  require('plugins.languages.just'),

  -- UI
  require('plugins.ui.colorscheme'),
  require('plugins.ui.snacks'),
  require('plugins.ui.noice'),
  require('plugins.ui.bufferline'),

  -- Coding
  require('plugins.coding.cmp'),
  require('plugins.coding.blink'),
  require('plugins.coding.snippets'),

  -- Editor
  require('plugins.editor.neo-tree'),
  require('plugins.editor.diffview'),
  -- require('plugins.editor.codediff'),

  -- LSP
  require('plugins.lsp.mason'),

  -- AI
  require('plugins.ai.copilot'),
}
