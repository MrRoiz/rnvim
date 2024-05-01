local language_utils = require("core.utils.language")
local common_utils = require("core.utils.common")

return {
	{
		"williamboman/mason.nvim",
		opts = {
			ui = {
				border = "single",
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = {
			"williamboman/mason.nvim",
		},
		opts = function()
			local LSP_SERVERS = language_utils.parse_lsp()
			local parsed_lsp_servers = {}

			for _, lsp_definition in ipairs(LSP_SERVERS) do
				table.insert(parsed_lsp_servers, lsp_definition["server"])
			end

			return {
				ensure_installed = parsed_lsp_servers,
				automatic_installation = true,
			}
		end,
	},
	{
		"jay-babu/mason-null-ls.nvim",
		dependencies = {
			"williamboman/mason.nvim",
			"jose-elias-alvarez/null-ls.nvim",
		},
		opts = function()
			local ensure_installed =
					common_utils.extend_table(language_utils.parse_formatters(), language_utils.parse_linters())

			return {
				ensure_installed = ensure_installed,
			}
		end,
		config = function(plugin, opts)
			require("mason-null-ls").setup(opts)
		end,
	},
}
