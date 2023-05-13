return {
	{
		"williamboman/mason.nvim",
		opts = {
			ui = {
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
			local LSP_SERVERS = require("core/languages/lsp")()
			local parsed_lsp_servers = {}

			for _, lsp_definition in pairs(LSP_SERVERS) do
				if lsp_definition["server"] then
					table.insert(parsed_lsp_servers, lsp_definition["server"])
				end
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
		opts = {
			ensure_installed = require("core.utils").parse_formatters()
		},
		config = function(plugin, opts)
			require("mason-null-ls").setup(opts)
		end
	}
}
