--[[
-- TODO: Move this function into utils file
--]]
return function()
	local languages = require("core.languages")
	local languages_parsed_with_lsp = {}
	local table_contains = require("core.utils").table_contains

	for key, value in pairs(languages) do
		local language = nil

		if type(value) ~= "table" then
			language = value
			languages_parsed_with_lsp[language] = {
				server = language,
			}
			goto set_extra_data
		end

		language = key
		if not table_contains(value, "lsp") then
			languages_parsed_with_lsp[language] = {
				server = language,
			}
			goto set_extra_data
		end

		if not value.lsp then
			goto continue
		end

		languages_parsed_with_lsp[language] = {
			server = value.lsp,
		}

		::set_extra_data::

		local lsp_extra_config_ok, lsp_extra_config = pcall(require, "core.languages.lsp." .. language)
		if not lsp_extra_config_ok then
			goto continue
		end

		for lsp_key, lsp_value in pairs(lsp_extra_config) do
			languages_parsed_with_lsp[language][lsp_key] = lsp_value
		end

		::continue::
	end

	return languages_parsed_with_lsp
end
