return {
	"NvChad/nvim-colorizer.lua",
	opts = {
		-- TODO: Find a way to avoid colorizing on Octo an DiffView
		filetypes = {
			"*",
			"!cmp_menu",
			"!NvimTree",
		},
		user_default_options = {
			tailwind = true,
			rgb_fn = true,
		},
	},
}
