local editor_utils = require('core.utils.editor')

vim.g.mapleader = ' '
require('core.lazy')

editor_utils.initialize_config()
editor_utils.load_mappings()
