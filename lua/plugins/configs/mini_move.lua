return function()
    local ok, move = pcall(require, 'mini.move')
    if not ok then
        return
    end

    move.setup()
end
