return function()
    local ok, guess_indent = pcall(require, 'guess-indent')
    if not ok then
        return
    end

    guess_indent.setup({
        auto_cmd = true
    })
end
