return {
	"neovim/nvim-lspconfig",
	opts = {
		on_attach = function(client, bufnr)
			-- Enable completion triggered by <c-x><c-o>
			vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

			-- Mappings.
			-- See `:help vim.lsp.*` for documentation on any of the below functions
			local bufopts = { noremap = true, silent = true, buffer = bufnr }
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
			vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
			vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, bufopts)
			vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, bufopts)
			vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
			vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
			vim.keymap.set("n", "<space>dd", vim.diagnostic.open_float, bufopts)
			-- vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
			-- vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
			-- vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
			-- vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
			-- vim.keymap.set('n', '<space>wl', function()
				-- print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
			-- end, bufopts)
			-- vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
		end,
		capabilities = require("cmp_nvim_lsp").default_capabilities()
	},
	config = function(plugin, opts)
		local LSP_SERVERS = require("core/languages/lsp")()
		local lspconfig = require("lspconfig")

		for _, lsp_definition in pairs(LSP_SERVERS) do
			local setup = {
				on_attach = opts.on_attach,
				capabilities = opts.capabilities,
			}

			for key, value in pairs(lsp_definition) do
				setup[key] = value
			end

			lspconfig[lsp_definition["server"]].setup(setup)
		end
	end,
}
