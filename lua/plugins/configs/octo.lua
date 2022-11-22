return function ()
    local ok, octo = pcall(require,'octo')
    if not ok then
        return
    end

    octo.setup()
end
