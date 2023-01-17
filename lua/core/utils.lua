local M = {}

M.load_mappings = function(plugin_name)
    local mappings = require('core.mappings')
    local set_keymap = vim.keymap.set

    local set_mapping = function(mode_group)
        for mode, commands in pairs(mode_group) do
            if mode ~= 'plugin' then
                for alias, command_definition in pairs(commands) do
                    if type(command_definition.command) == 'table' then
                        for _, command in pairs(command_definition.command) do
                            set_keymap(mode, command, command_definition.mapping)
                        end
                    else
                        set_keymap(mode, command_definition.command, command_definition.mapping)
                    end
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
            local leader_key = mode_group
            vim.g.mapleader = leader_key
        end
    end
end

M.parse_languages_to_treesitter = function ()
    local languages = require('core.languages')
    local parsed_languages = {}

    for _, language in pairs(languages) do
        if language == "javascript_typescript" then
            table.insert(parsed_languages, "tsx")
            table.insert(parsed_languages, "javascript")
            table.insert(parsed_languages, "typescript")
        elseif language ~= "sql" then -- TODO: Check when sql is available for treesitter
            table.insert(parsed_languages, language)
        end
    end

    return parsed_languages
end

return M
