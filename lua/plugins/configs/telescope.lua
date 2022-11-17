return function()
    local ok, telescope = pcall(require, 'telescope')
    if not ok then
        return
    end

    telescope.setup({
        extensions_list = { "themes" },
        defaults = {
            file_ignore_patterns = {
                "node_modules",
                "venv"
            }
        }
    })
end
