return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"kyazdani42-nvim-web-devicons",
	},
	opts = {
		options = {
			theme = 'monokai-pro',
			globalstatus = true,
			disabled_filetypes = {
				statusline = {
					"alpha", --[[ "NvimTree" ]]
				},
			},
		},
		sections = {
			lualine_a = { "mode" },
			lualine_b = { "branch" },
			lualine_c = {
				{
					"filetype",
					icon_only = true,
					separator = "",
					padding = {
						left = 1,
						right = 0,
					},
				},
				{ "filename", path = 1, symbols = { modified = "  ", readonly = "", unnamed = "" } },
			},
		},
	},
}
