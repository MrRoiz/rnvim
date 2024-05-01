local language_utils = require("core.utils.language")

return {
	"nvimtools/none-ls.nvim",
	opts = function()
		local null_ls = require("null-ls")
		local formatters = language_utils.parse_formatters()
		local linters = language_utils.parse_linters()

		local sources = {}

		local diagnostics = null_ls.builtins.diagnostics
		local formatting = null_ls.builtins.formatting

		for key, formatter in pairs(formatters) do
			table.insert(sources, formatting[formatter])
		end

		for key, linter in pairs(linters) do
			table.insert(sources, diagnostics[linter])
		end

		return {
			sources = sources,
		}
	end,
}
