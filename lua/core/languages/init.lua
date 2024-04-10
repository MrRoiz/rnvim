--[[
--  NOTE: keys are like an alias of the language this name is also used to find the file on the lsp folder where it'll have the config for that specific language
--  - When tables does not have lsp or tressiter values it'll take the key of that table eg. lua does not have a treesitter value, for treesitter it'll use "lua"
--  - To omit a tressitter or a lsp for an specific language you can set the key (lsp or tressiter) and set it a value of false
--  - Treesitter values always are going to be a table (array) of strings in case more options are needed for an specific lang
--  - Formatter is only an string with the formatter you'd like to use for that specific lang, it'll be autoinstalled and handle by null-ls
--]]
return {
	lua = {
		lsp = "lua_ls",
		formatter = "stylua",
	},
	python = {
		lsp = "pyright",
		formatter = "black",
	},
	javascript = {
		lsp = "tsserver",
		treesitter = { "tsx", "javascript", "typescript", "jsdoc" },
		formatter = "prettierd",
	},
	json = {
		lsp = "jsonls",
	},
	sql = {
		lsp = "sqlls",
		formatter = "sql_formatter",
	},
	vue = {
		lsp = "volar",
	},
	bash = {
		lsp = "bashls",
	},
	vim = {
		lsp = false,
	},
	markdown = {
		lsp = false,
		treesitter = { "markdown", "markdown_inline" },
	},
	-- TODO: Find a way to attach this lsp only when the project has tailwind
	tailwind = {
		lsp = "tailwindcss",
		treesitter = false,
	},
	regex = {
		lsp = false,
	},
	prisma = {
		lsp = false,
	},
	eslint = {
		treesitter = false,
	},
	css = {
		lsp = false,
		treesitter = { "css", "scss" },
	},
	"html",
	"svelte",
}
