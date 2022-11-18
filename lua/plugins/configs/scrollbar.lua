return function()
    local ok, scrollbar = pcall(require, 'scrollbar')
    if not ok then
        return
    end

    scrollbar.setup()
end
