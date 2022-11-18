return function ()
    local ok, null_ls = pcall(require, 'null-ls')
    if not ok then
        return
    end

    local diagnostics = null_ls.builtins.diagnostics
    local formatting = null_ls.builtins.formatting.prettier
    -- local code_actions = null_ls.builtins.code_actions

    null_ls.setup({
        sources = {
            -- TODO: Find a way to discard words on cspell
            -- diagnostics.cspell,
            -- code_actions.cspell,

            diagnostics.eslint_d,
            formatting.prettierd
        }
    })
end
