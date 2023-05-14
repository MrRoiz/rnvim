return {
	{
		"loctvl842/monokai-pro.nvim",
			config = function()  
				require("monokai-pro").setup({
					filter ="octagon"
				})
				vim.cmd([[colorscheme monokai-pro]])

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
