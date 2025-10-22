return {
  'zbirenbaum/copilot.lua',
  opts = {
    -- copilot_node_command = vim.fn.system('fnm exec --using=22 which node'):gsub('\n', ''),
    copilot_node_command = vim.fn.expand('$HOME') .. '/.nvm/versions/node/v22.20.0/bin/node',
  },
}
