return function()
    local ok, nvimtree = pcall(require, "nvim-tree")
    if not ok then
        return
    end

    nvimtree.setup({
        actions = {
            open_file = {
                quit_on_open = true
            }
        },
        view = {
            adaptive_size = true,
            -- Awesome feature but disabled temporary
            -- float = {
            --     enable = true,
            -- },
        },
        git = {
            ignore = false
        }
    })
end
