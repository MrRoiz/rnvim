local utils = require("core.utils")
vim.g.mapleader = ' '
require("core/lazy")
utils.initialize_config()
utils.load_mappings()
