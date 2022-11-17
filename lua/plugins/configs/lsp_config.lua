return function()
    -- TODO: Separate this LSP configs to independient files
    local LSP_SERVERS = {
        lua = {
            server = "sumneko_lua",
            settings = {}
        },
        python = {
            server = 'pyright',
            settings = {}
        },
        ['js/ts'] = {
            server = 'tsserver',
            settings = {
                diagnostics = {
					ignoredCodes = {
						-- https://github.com/microsoft/TypeScript/blob/main/src/compiler/diagnosticMessages.json

                        -- TODO: Look for a way to apply this only for JS and not TS
						7016, -- ts7016: Could not find a declaration file for module .
					},
				},
            }
        }
    }

    local ok_capabilities, cmp_nvim_lsp = pcall(require,'cmp_nvim_lsp')
    local ok_lspconfig, lspconfig = pcall(require, 'lspconfig')
    if not ok_capabilities or not ok_lspconfig then
        return
    end

    local capabilities = cmp_nvim_lsp.default_capabilities()

    for _, lsp_definition in pairs(LSP_SERVERS) do
        lspconfig[lsp_definition['server']].setup({
            capabilities = capabilities,
            settings = lsp_definition['settings']
        })
    end
end
