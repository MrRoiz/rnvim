return {
  -- Languages that requires a custom config
  require('plugins.languages.javascript'),
  require('plugins.languages.json'),
  require('plugins.languages.markdown'),
  require('plugins.languages.bash'),

  -- UI
  require('plugins.ui.colorscheme'),
  require('plugins.ui.dashboard'),
  require('plugins.ui.noice'),
  require('plugins.ui.bufferline'),

  -- Formatters
  require('plugins.formatting.conform'),

  -- Coding
  require('plugins.coding.nvim-cmp'),
  require('plugins.coding.diffview'),

  -- Editor
  require('plugins.editor.neo-tree'),
  require('plugins.editor.mini-move'),
}
