return {
    server = "tsserver",
    settings = {
        diagnostigs = {
            ignoredCodes = {
                -- https://github.com/microsoft/TypeScript/blob/main/src/compiler/diagnosticMessages.json
                -- TODO: Find a way to separate this option to apply it only for Javascript
                7016, -- ts7016: No declaration file
            }
        }
    }
}
