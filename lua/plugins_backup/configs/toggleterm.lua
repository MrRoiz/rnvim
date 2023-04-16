return function ()
    local ok, toggleterm = pcall(require, 'toggleterm')
    if not ok then
        return
    end

    toggleterm.setup({
        float_opts = {
            border = "curved",
            width = 150,
            height = 30,
        }
    })
end
