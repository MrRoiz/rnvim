require('core/options')
require("core/utils").load_mappings()
require("core/lazy")

local function open_nvim_tree()
  local ok, api = pcall(require, "nvim-tree.api")
  if ok then
    api.tree.open()
  end
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
