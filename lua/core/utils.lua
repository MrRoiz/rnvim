local M = {}

M.load_mappings = function(plugin_name)
    local mappings = require('core.mappings')
    local set_keymap = vim.keymap.set

    local set_mapping = function(mode_group)
        for mode, commands in pairs(mode_group) do
            if mode ~= 'plugin' then
                for alias, command_definition in pairs(commands) do
                    set_keymap(mode, command_definition.command, command_definition.mapping)
                end
            end
        end
    end

    for command_type, mode_group in pairs(mappings) do
        if (
            (
                plugin_name and
                mode_group['plugin'] and
                plugin_name == command_type
            ) or
            (
                not plugin_name and
                not mode_group['plugin'] and
                command_type ~= "leader_key"
            )
        ) then
            set_mapping(mode_group)
        elseif command_type == "leader_key" then
            leader_key = mode_group
            vim.g.mapleader = leader_key
        end
    end

end

return M