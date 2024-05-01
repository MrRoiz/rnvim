local common_utils = require("core.utils.common")

local function get_languages_tools(tool)
  local languages = require("core.languages")
  local tools = {}

  for _, language in ipairs(languages) do
    if not common_utils.table_contains(language, tool) then
      goto continue
    end

    local found_tool = language[tool]

    if type(found_tool) == "table" and common_utils.is_array(found_tool) then
      tools = common_utils.extend_table(tools, found_tool)
      goto continue
    end

    table.insert(tools, language[tool])

    ::continue::
  end

  return tools
end

local M = {}

M.parse_lsp = function()
  local languages = require("core.languages")
  local lsps = {}

  for _, language in ipairs(languages) do

    if not common_utils.table_contains(language, "lsp") then
      goto continue
    end

    local lsp_declarations = {}
    if common_utils.is_array(language.lsp) then
      lsp_declarations = common_utils.extend_table(lsp_declarations, language.lsp)
    else
      table.insert(lsp_declarations, language.lsp)
    end

    for _, lsp_declaration in ipairs(lsp_declarations) do
      local current_config = {}
      if not common_utils.table_contains(lsp_declaration, "server") then
        goto continue
      end

      current_config.server = lsp_declaration.server

      if common_utils.table_contains(lsp_declaration, "server_opts") then
        current_config.config = lsp_declaration.server_opts
      end

      table.insert(lsps, current_config)
    end

    ::continue::
  end

  return lsps
end

M.parse_treesitter = function()
  return get_languages_tools("treesitter")
end

M.parse_formatters = function()
  return get_languages_tools("formatter")
end

M.parse_linters = function()
  return get_languages_tools("linter")
end

return M
