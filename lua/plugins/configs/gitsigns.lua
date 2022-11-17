return function()
    local ok, gitsigns = pcall(require, 'gitsigns')
    if not ok then
        return
    end

    gitsigns.setup({
        current_line_blame_formatter = '<author>, at <author_time:%Y-%m-%d> - <summary>',
        current_line_blame = true,
        current_line_blame_opts = {
            delay = 600
        }
    })
end
