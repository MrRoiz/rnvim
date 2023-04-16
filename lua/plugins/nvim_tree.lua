return {
	"kyazdani42/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		actions = {
			open_file = {
				quit_on_open = true,
			},
		},
		view = {
			adaptive_size = true,
			-- Awesome feature but disabled temporary
			-- float = {
			--     enable = true,
			-- },
		},
		git = {
			ignore = false,
		},
	},
}
