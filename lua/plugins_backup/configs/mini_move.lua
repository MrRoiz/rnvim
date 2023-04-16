return function()
    local ok, move = pcall(require, "mini.move")
    if not ok then
        return
    end

    move.setup({
        mappings = {
            left = "<S-Tab>",
            right = "<Tab>",

            line_left = "<S-Tab>",
            line_right = "<Tab>",
        },
    })
end
