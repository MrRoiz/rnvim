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
            },
            Normal = {
                bg = "#080c12"
            }
        }
    })

    vim.cmd('colorscheme ayu-dark')
end
