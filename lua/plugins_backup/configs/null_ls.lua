return function()
	local ok, null_ls = pcall(require, "null-ls")
	local ok_utils, utils = pcall(require, "null-ls.utils")
	if not ok or not ok_utils then
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
			diagnostics.eslint_d.with({
				filetypes = { "javascript", "typescript", "vue", "html", "css" },
				condition = function()
					return utils.root_pattern(
						"eslint.config.js",
						-- https://eslint.org/docs/user-guide/configuring/configuration-files#configuration-file-formats
						".eslintrc",
						".eslintrc.js",
						".eslintrc.cjs",
						".eslintrc.yaml",
						".eslintrc.yml",
						".eslintrc.json",
						"package.json"
					)(vim.api.nvim_buf_get_name(0)) ~= nil
				end,
			}),

			-- Formatters
			formatting.prettier,
			formatting.stylua,
			formatting.sql_formatter,
			formatting.black
		},
	})
end
