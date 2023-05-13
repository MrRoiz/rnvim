return {
	"jose-elias-alvarez/null-ls.nvim",
	opts = function()
		local null_ls = require("null-ls")
		local formatters = require("core.utils").parse_formatters()

		local sources = {}

		local formatting = null_ls.builtins.formatting
		for key, formatter in pairs(formatters) do
			table.insert(sources, formatting[formatter])
		end

		return {
			sources = sources,
		}
	end,
}
