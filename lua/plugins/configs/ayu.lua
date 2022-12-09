return function()
    local ok, ayu = pcall(require, 'ayu')
    if not ok then
        return
    end


    ayu.setup({
        mirage = false,
    })

    vim.cmd('colorscheme ayu-dark')
end
