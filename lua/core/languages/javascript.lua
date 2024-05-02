return {
	lsp = {
		{
			server = "tsserver",
			plugin = {
				"pmizio/typescript-tools.nvim",
				dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
				opts = {},
			},
		},
		{
			-- TODO: Find a way to attach this lsp only when the project has tailwind
			server = "tailwindcss",
		},
		{
			server = "eslint",
		},
	},
	treesitter = { "tsx", "javascript", "typescript", "jsdoc", "prisma" },
	formatter = "prettierd",
}
