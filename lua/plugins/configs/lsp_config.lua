return function()
    local LSP_SERVERS = {
        lua = "sumneko_lua",
        python = 'pyright',
        ['js/ts'] = 'tsserver'
    }

    local ok_capabilities, cmp_nvim_lsp = pcall(require,'cmp_nvim_lsp')
    local ok_lspconfig, lspconfig = pcall(require, 'lspconfig')
    if not ok_capabilities or not ok_lspconfig then
        return
    end

    local capabilities = cmp_nvim_lsp.default_capabilities()

    for _, lsp_server in pairs(LSP_SERVERS) do
        lspconfig[lsp_server].setup({
            capabilities = capabilities,
        })
    end
end
