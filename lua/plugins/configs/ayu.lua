return function()
    local ok, ayu = pcall(require, 'ayu')
    if not ok then
        return
    end
    ayu.setup({
        options = {
            theme = 'ayu',
        },
    })

    vim.cmd('colorscheme ayu')
end
