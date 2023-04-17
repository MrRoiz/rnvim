return {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree-nvim-web-devicons" },
    config = function (plugin, opts)
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
        vim.cmd("bd")
        vim.cmd("Alpha")
    end
}
