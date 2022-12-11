return function()
	local ok, null_ls = pcall(require, "null-ls")
	if not ok then
		return
	end

	local diagnostics = null_ls.builtins.diagnostics
	local formatting = null_ls.builtins.formatting
	-- local code_actions = null_ls.builtins.code_actions

	null_ls.setup({
		sources = {
			-- TODO: Find a way to discard words on cspell or find other linter for spelling
			-- diagnostics.cspell,
			-- code_actions.cspell,

			-- Diagnostics
			diagnostics.eslint_d,

			-- Formatters
			formatting.prettier,
			formatting.stylua,
            formatting.sql_formatter,
		},
	})
end
