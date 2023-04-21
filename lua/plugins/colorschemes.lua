return {
	{
		"Shatur/neovim-ayu",
		lazy = false,
		priority = 1000,
		-- enabled= false,
		config = function()
			require("ayu").colorscheme()
			vim.cmd("highlight LineNr guifg=#45454f")
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
