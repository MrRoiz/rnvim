return function ()
    local languages = require('core.languages.init')
    local languages_parsed_with_lsp = {}

    for _, language in ipairs(languages) do
        local language_lsp_definition_ok, language_lsp_definition = pcall(require, 'core.languages.lsp.'.. language)
        if language_lsp_definition_ok then
            languages_parsed_with_lsp[language] = language_lsp_definition
        end
    end

    return languages_parsed_with_lsp
end
