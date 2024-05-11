local common_utils = require("core.utils.common")

local function get_languages_tools(tool)
	local languages = require("core.languages")
	local tools = {}

	for _, language in ipairs(languages) do
		if not common_utils.table_contains(language, tool) then
			goto continue
		end

		local found_tool = language[tool]

		if type(found_tool) == "table" and vim.tbl_islist(found_tool) then
			tools = common_utils.extend_table(tools, found_tool)
			goto continue
		elseif type(found_tool) == "table" and not vim.tbl_islist(found_tool)  then
			tools = vim.tbl_extend("error", tools, found_tool)
			goto continue
		end

		table.insert(tools, language[tool])

		::continue::
	end

	return tools
end

local function iterate_over_lsp_declarations(callback)
	local languages = require("core.languages")

	for _, language in ipairs(languages) do
		if not common_utils.table_contains(language, "lsp") then
			goto continue
		end

		local lsp_declarations = {}
		if vim.tbl_islist(language.lsp) then
			lsp_declarations = common_utils.extend_table(lsp_declarations, language.lsp)
		else
			table.insert(lsp_declarations, language.lsp)
		end

		for _, lsp_declaration in ipairs(lsp_declarations) do
			callback(lsp_declaration)
		end

		::continue::
	end
end

local M = {}

M.parse_configurable_lsp_servers = function()
	local lsps = {}

	iterate_over_lsp_declarations(function(lsp_declaration)
		local current_config = {}
		if not common_utils.table_contains(lsp_declaration, "server") then
			goto continue
		end

		if common_utils.table_contains(lsp_declaration, "plugin") then
			goto continue
		end

		current_config.server = lsp_declaration.server

		if common_utils.table_contains(lsp_declaration, "server_opts") then
			current_config.server_opts = lsp_declaration.server_opts
		end

		table.insert(lsps, current_config)

		::continue::
	end)

	return lsps
end

M.parse_installable_lsp_servers = function()
	local lsps = {}

	iterate_over_lsp_declarations(function(lsp_declaration)
		if not common_utils.table_contains(lsp_declaration, "server") then
			goto continue
		end

		table.insert(lsps, lsp_declaration.server)

		::continue::
	end)

	return lsps
end

M.parse_lsp_plugins = function()
	local plugins = {}

	iterate_over_lsp_declarations(function(lsp_declaration)
		if not common_utils.table_contains(lsp_declaration, "plugin") then
			goto continue
		end

		table.insert(plugins, lsp_declaration.plugin)

		::continue::
	end)

	return plugins
end

M.parse_treesitter = function()
	return get_languages_tools("treesitter")
end

M.parse_formatters_conform = function()
	return get_languages_tools("formatter")
end

M.parse_formatters = function()
	local raw_formatters = M.parse_formatters_conform()
	return vim.tbl_flatten(vim.tbl_values(raw_formatters))
end

M.parse_linters = function()
	return get_languages_tools("linter")
end

return M
