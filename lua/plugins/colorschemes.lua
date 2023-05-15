return {
	{
		"MrRoiz/neovim-ayu",
		lazy = false,
		priority = 1000,
		config = function()
			require("ayu").colorscheme()
		end,
    },
	{
		"loctvl842/monokai-pro.nvim",
		config = function()
            require("monokai-pro").setup({
				filter = "octagon", -- classic | octagon | pro | machine | ristretto | spectrum
                terminal_colors = true,
				devicons = true, -- highlight the icons of `nvim-web-devicons`
				styles = {
					comment = { italic = true },
					keyword = { italic = true }, -- any other keyword
					type = { italic = true }, -- (preferred) int, long, char, etc
					storageclass = { italic = true }, -- static, register, volatile, etc
					structure = { italic = true }, -- struct, union, enum, etc
					parameter = { italic = true }, -- parameter pass in function
					annotation = { italic = true },
					tag_attribute = { italic = true }, -- attribute of tag in reactjs
                },
				background_clear = {
					-- "float_win",
					"toggleterm",
					"telescope",
					"which-key",
					"renamer"
				},-- "float_win", "toggleterm", "telescope", "which-key", "renamer", "neo-tree"
		  })
		end
	},
	{
		"navarasu/onedark.nvim",
		lazy = false,
		priority = 1000,
		enabled = false,
		opts = {
			style = "deep"
		},
		config = function (plugin, opts)
			local onedark = require("onedark")
			onedark.setup(opts)
			onedark.load()
		end
	}
}
