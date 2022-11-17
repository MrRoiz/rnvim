return function()
    -- TODO: Separate this LSP configs to independient files
    local LSP_SERVERS = {
        lua = {
            server = "sumneko_lua",
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { 'vim' }
                    }
                }
            }
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

    local on_attach = function(client, bufnr)
        -- Enable completion triggered by <c-x><c-o>
        vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

        -- Mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        local bufopts = { noremap=true, silent=true, buffer=bufnr }
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
        -- vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
        -- vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
        -- vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
        -- vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
        -- vim.keymap.set('n', '<space>wl', function()
            -- print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
            -- end, bufopts)
        vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
        vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
        -- vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
        -- vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
        -- vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
    end

    local ok_capabilities, cmp_nvim_lsp = pcall(require,'cmp_nvim_lsp')
    local ok_lspconfig, lspconfig = pcall(require, 'lspconfig')
    if not ok_capabilities or not ok_lspconfig then
        return
    end

    local capabilities = cmp_nvim_lsp.default_capabilities()

    for _, lsp_definition in pairs(LSP_SERVERS) do
        lspconfig[lsp_definition['server']].setup({
            on_attach = on_attach,
            capabilities = capabilities,
            settings = lsp_definition['settings']
        })
    end
end
