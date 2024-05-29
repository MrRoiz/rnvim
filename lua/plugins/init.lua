return {
  -- Languages that requires a custom config
  require('plugins.languages.javascript'),

  -- UI
  require('plugins.ui.colorschema'),
  require('plugins.ui.dashboard'),
  require('plugins.ui.noice'),

  -- Formatters
  require('plugins.formatting.conform'),

  -- Coding
  require('plugins.coding.nvim-cmp'),
  require('plugins.coding.diffview'),
}
