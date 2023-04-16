return function ()
    local ok, goto_preview = pcall(require, 'goto-preview')
    if not ok then
        return
    end

    goto_preview.setup({
        default_mappings = true
    })
end

