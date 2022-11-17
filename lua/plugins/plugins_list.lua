local plugins = {
    packer = 'wbthomason/packer.nvim',

    -- Colorschemes and customizatoion
    ayu = "Shatur/neovim-ayu",
    indent_line = "Yggdroot/indentLine",
    lualine = "nvim-lualine/lualine.nvim",

    -- Syntax Highlighting
    treesitter = "nvim-treesitter/nvim-treesitter",
    illuminate = "RRethy/vim-illuminate",

    -- LSP and Autocomplete
    lsp_config = "neovim/nvim-lspconfig",
    mason = 'williamboman/mason.nvim',
    autopairs = "windwp/nvim-autopairs",
    comment = "numToStr/Comment.nvim",
    autotag = "windwp/nvim-ts-autotag",

    -- Navigation
    nvim_web_dev_icons = "nvim-tree/nvim-web-devicons",
    plenary = 'nvim-lua/plenary.nvim',
    nvimtree = "kyazdani42/nvim-tree.lua",
    telescope = "nvim-telescope/telescope.nvim",
    barbar = "romgrk/barbar.nvim",

    -- IDE
    floaterm = "voldikss/vim-floaterm",

    -- Git
    gitsigns = "lewis6991/gitsigns.nvim"
}

return plugins
