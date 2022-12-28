local plugins = {
    packer = 'wbthomason/packer.nvim',

    -- Colorschemes and customization
    ayu = "Shatur/neovim-ayu",
    indent_blankline = "lukas-reineke/indent-blankline.nvim",
    lualine = "nvim-lualine/lualine.nvim",
    dressing = "stevearc/dressing.nvim",
    scrollbar = "petertriho/nvim-scrollbar",
    gruvbox = "ellisonleao/gruvbox.nvim",

    -- LSP and Autocomplete
    lsp_config = "neovim/nvim-lspconfig",
    mason = 'williamboman/mason.nvim',
    autopairs = "windwp/nvim-autopairs",
    comment = "numToStr/Comment.nvim",
    autotag = "windwp/nvim-ts-autotag",
    -- Disabled because an issue when opening Telescope and Fidget is still loading
    -- fidget = "j-hui/fidget.nvim",

    -- Null-ls Stuff
    null_ls = "jose-elias-alvarez/null-ls.nvim",

    -- Syntax Highlighting
    illuminate = "RRethy/vim-illuminate",
    treesitter = "nvim-treesitter/nvim-treesitter",

    --CMP Stuff
    cmp_nvim_lsp = "hrsh7th/cmp-nvim-lsp",
    cmp_buffer = "hrsh7th/cmp-buffer",
    cmp_path = "hrsh7th/cmp-path",
    cmp_cmdline = "hrsh7th/cmp-cmdline",
    cmp = "hrsh7th/nvim-cmp",
    luasnip = "L3MON4D3/LuaSnip",
    friendly_snippets = "rafamadriz/friendly-snippets",

    -- Navigation
    nvim_web_dev_icons = "nvim-tree/nvim-web-devicons",
    plenary = 'nvim-lua/plenary.nvim',
    nvimtree = "kyazdani42/nvim-tree.lua",
    telescope = "nvim-telescope/telescope.nvim",
    bufferline = "akinsho/bufferline.nvim",

    -- IDE
    goto_preview = "rmagatti/goto-preview",
    toggleterm = "akinsho/toggleterm.nvim",
    guess_indent = "NMAC427/guess-indent.nvim",
    wilder = "gelguy/wilder.nvim",
    ufo = "kevinhwang91/nvim-ufo",
    which_key = "folke/which-key.nvim",

    -- Typing
    surround = "tpope/vim-surround",
    visual_multi = "mg979/vim-visual-multi",

    -- Git
    octo = "pwntester/octo.nvim",
    diffview = "sindrets/diffview.nvim",
    gitsigns = "lewis6991/gitsigns.nvim"
}

return plugins
