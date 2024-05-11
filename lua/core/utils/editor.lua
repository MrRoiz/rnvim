local M = {}

M.load_mappings = function(plugin_name)
  local mappings = require('core.mappings')
  local set_keymap = function(mode, command, mapping, desc)
    vim.keymap.set(mode, command, mapping, { silent = true, desc = desc })
  end

  local set_mapping = function(mode_group)
    for mode, commands in pairs(mode_group) do
      if mode ~= 'plugin' then
        for alias, command_definition in pairs(commands) do
          if type(command_definition.command) == 'table' then
            for _, command in pairs(command_definition.command) do
              set_keymap(mode, command, command_definition.mapping, alias)
            end
          else
            set_keymap(mode, command_definition.command, command_definition.mapping, alias)
          end
        end
      end
    end
  end

  for command_type, mode_group in pairs(mappings) do
    if
      (plugin_name and mode_group['plugin'] and plugin_name == command_type)
      or (not plugin_name and not mode_group['plugin'] and command_type ~= 'leader_key')
    then
      set_mapping(mode_group)
    elseif command_type == 'leader_key' then
      local leader_key = mode_group
      vim.g.mapleader = leader_key
    end
  end
end

M.set_diagnostic_config = function()
  local signs = require('config.diagnostics').signs
  for type, icon in pairs(signs) do
    local hl = 'DiagnosticSign' .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
  end

  -- Add borders to diagnostic windows
  vim.diagnostic.config({
    float = { border = 'single' },
  })
end

M.initialize_config = function()
  local options = require('config.options')
  for key, value in pairs(options) do
    vim.opt[key] = value
  end

  local globals = require('config.globals')
  for key, value in pairs(globals) do
    vim.g[key] = value
  end

  local ui_configs = require('config.ui')

  vim.cmd('colorscheme ' .. ui_configs.theme)
end

return M
