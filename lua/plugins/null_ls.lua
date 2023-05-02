return {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function()
        local null_ls = require("null-ls")

        local formatting = null_ls.builtins.formatting
        -- local code_actions = null_ls.builtins.code_actions
        -- local diagnostics = null_ls.builtins.diagnostics

        return {
            sources = {
                -- TODO: Find a way to discard words on cspell or find other linter for spelling
                -- diagnostics.cspell,
                -- code_actions.cspell,

                -- Formatters
                formatting.prettier,
                formatting.stylua,
                formatting.sql_formatter,
                formatting.black
            },
        }
    end
}
