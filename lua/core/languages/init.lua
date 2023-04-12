--[[
--  NOTE: keys are like an alias of the language this name is also used to find the file on the lsp folder where it'll have the config for that specific language
--  - When tables does not have lsp or tressiter values it'll take the key of that table eg. lua does not have a treesitter value, for treesitter it'll use "lua"
--  - To omit a tressitter or a lsp for an specific language you can set the key (lsp or tressiter) and set it a value of false
--  - Treesitter values always are going to be a table (array) or strings in case more options are needed for an specific lang
--]]
return {
    lua = {
        lsp = "lua_ls",
    },
    python = {
        lsp = "pyright",
    },
    javascript = {
        lsp = "tsserver",
        treesitter = { "tsx", "javascript", "typescript" },
    },
    json = {
        lsp = "jsonls",
    },
    sql = {
        lsp = "sqlls",
    },
    vue = {
        lsp = "volar"
    },
    bash = {
        lsp = "bashls"
    },
    vim = {
        lsp = false
    },
    "html",
    "svelte",
}
