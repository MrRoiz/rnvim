local icons = require('config.icons')
return {
  signs = {
    Error = icons.diagnostics.Error,
    Warn = icons.diagnostics.Warn,
    Hint = icons.diagnostics.Hint,
    Info = icons.diagnostics.Info,
  },
  virtual_text = {
    spacing = 4,
    source = 'if_many',
    prefix = icons.diagnostics.Prefix,
    -- this will set set the prefix to a function that returns the diagnostics icon based on the severity
    -- this only works on a recent 0.10.0 build. Will be set to "●" when not supported
    -- prefix = "icons",
  },
}
