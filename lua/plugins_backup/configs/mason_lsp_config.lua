return function()
    local ok, mason_lsp_config = pcall(require, 'mason-lspconfig')
    if not ok then
        return
    end

    local LSP_SERVERS = require('core/languages/lsp')()
    local parsed_lsp_servers = {}

    for _, lsp_definition in pairs(LSP_SERVERS) do
        if lsp_definition['server'] then
            table.insert(parsed_lsp_servers, lsp_definition['server'])
        end
    end

    mason_lsp_config.setup({
        ensure_installed = parsed_lsp_servers,
        automatic_installation = true
    })
end
