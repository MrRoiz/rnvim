return function()
    local ok, diffview = pcall(require, 'diffview')
    if not ok then
        return
    end

    diffview.setup({
        view = {
            merge_tool = {
                layout = "diff3_mixed"
            }
        }
    })
end
