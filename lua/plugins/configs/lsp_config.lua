return function()
    local LSP_SERVERS = {
        lua = "sumneko_lua",
        python = 'pyright',
        ['js/ts'] = 'tsserver'
    }

    local ok, lspconfig = pcall(require, 'lspconfig')
    if not ok then
        return
    end

    for _, lsp_server in pairs(LSP_SERVERS) do
        lspconfig[lsp_server].setup({})
    end
end
