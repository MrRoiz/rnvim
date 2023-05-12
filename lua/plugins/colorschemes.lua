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
