return function ()
    local ok, indent_blanline = pcall(require, 'indent_blankline')
    if not ok then
        return
    end

    vim.opt.list = true
    indent_blanline.setup({
        show_current_context = true,
        show_current_context_start = true,
    })
end
