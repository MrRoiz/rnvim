return function()
    local ok, ayu = pcall(require, 'ayu')
    if not ok then
        return
    end


    ayu.setup({
        mirage = false,
        overrides = {
            Comment = {
                fg = "#6e6e6e"
            }
        }
    })

    vim.cmd('colorscheme ayu-dark')
end
