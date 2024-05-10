return {
	"neovim/nvim-lspconfig",
	dependencies = {
		{ "folke/neodev.nvim", opts = {} }
	},
	opts = {
		on_attach = function(client, bufnr)
			-- Enable completion triggered by <c-x><c-o>
			vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

			-- Mappings.
			-- See `:help vim.lsp.*` for documentation on any of the below functions
			local bufopts = { noremap = true, silent = true, buffer = bufnr }
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
			vim.keymap.set("n", "gd", ":Telescope lsp_definitions initial_mode=normal<CR>", bufopts)
			vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
			vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, bufopts)
			vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, bufopts)
			vim.keymap.set("n", "gr", ":Telescope lsp_references initial_mode=normal<CR>", bufopts)
			vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, bufopts)
			vim.keymap.set("n", "<space>ce", vim.diagnostic.open_float, bufopts)
			-- vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
			-- vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
			-- vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
			-- vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
			-- vim.keymap.set('n', '<space>wl', function()
			-- print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
			-- end, bufopts)
			-- vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
		end,
		capabilities = require("cmp_nvim_lsp").default_capabilities(),
		diagnostics = {
			underline = true,
			update_in_insert = false,
			virtual_text = require('config.diagnostics').virtual_text,
			severity_sort = true,
		},
	},
	config = function(plugin, opts)
		local lspconfig = require("lspconfig")
		local common_utils = require("core.utils.common")
		local LSP_SERVERS = require("core.utils.language").parse_configurable_lsp_servers()
		require("core.utils.editor").set_diagnostic_config()
		require("neodev").setup()

		for _, lsp_definition in pairs(LSP_SERVERS) do
			local setup = {
				on_attach = opts.on_attach,
				capabilities = opts.capabilities,
			}

			if common_utils.table_contains(lsp_definition, 'server_opts') then
				setup = common_utils.merge_tables(setup, lsp_definition.server_opts)
			end

			lspconfig[lsp_definition["server"]].setup(setup)
		end

		vim.diagnostic.config(vim.deepcopy(opts.diagnostics))
	end,
}
