local M = {}

M.load_mappings = function(plugin_name)
	local mappings = require("core.mappings")
	local set_keymap = function(mode, command, mapping, desc)
		vim.keymap.set(mode, command, mapping, { silent = true, desc = desc })
	end

	local set_mapping = function(mode_group)
		for mode, commands in pairs(mode_group) do
			if mode ~= "plugin" then
				for alias, command_definition in pairs(commands) do
					if type(command_definition.command) == "table" then
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
			(plugin_name and mode_group["plugin"] and plugin_name == command_type)
			or (not plugin_name and not mode_group["plugin"] and command_type ~= "leader_key")
		then
			set_mapping(mode_group)
		elseif command_type == "leader_key" then
			local leader_key = mode_group
			vim.g.mapleader = leader_key
		end
	end
end

M.parse_languages_to_treesitter = function()
	local languages = require("core.languages")
	local parsed_languages = {}

	for key, language in pairs(languages) do
		if type(language) ~= "table" then
			table.insert(parsed_languages, language)
			goto continue
		end

		if not M.table_contains(language, "treesitter") then
			table.insert(parsed_languages, key)
			goto continue
		end

		if not language.treesitter then
			goto continue
		end

		for _, single_languange in pairs(language["treesitter"]) do
			table.insert(parsed_languages, single_languange)
		end

		::continue::
	end

	return parsed_languages
end

M.parse_formatters = function()
	local languages = require("core.languages")
	local formatters = {}

	for key, language in pairs(languages) do
		if type(language) ~= "table" then
			goto continue
		end

		if not M.table_contains(language, "formatter") then
			goto continue
		end

		table.insert(formatters, language.formatter)

		::continue::
	end

	return formatters
end

M.table_contains = function(given_table, given_key)
	for key, value in pairs(given_table) do
		if given_key == key then
			return true
		end
	end
	return false
end

M.set_diagnostic_config = function()
	local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
	for type, icon in pairs(signs) do
		local hl = "DiagnosticSign" .. type
		vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
	end

	-- Add borders to diagnostic windows
	vim.diagnostic.config({
		float = { border = "single" },
	})
end

return M
