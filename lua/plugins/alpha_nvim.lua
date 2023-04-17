return {
	"goolord/alpha-nvim",
	dependencies = { "nvim-tree-nvim-web-devicons" },
	opts = {
		-- NOTE: ASCII generated here: https://patorjk.com/software/taag/#p=display&f=Larry%203D&t=rnvim
		header = {
			[[                                               ]],
			[[                                               ]],
			[[                           __                  ]],
			[[  _ __    ___     __  __  /\_\     ___ ___     ]],
			[[ /\`'__\/' _ `\  /\ \/\ \ \/\ \  /' __` __`\   ]],
			[[ \ \ \/ /\ \/\ \ \ \ \_/ | \ \ \ /\ \/\ \/\ \  ]],
			[[  \ \_\ \ \_\ \_\ \ \___/   \ \_\\ \_\ \_\ \_\ ]],
			[[   \/_/  \/_/\/_/  \/__/     \/_/ \/_/\/_/\/_/ ]],
			[[                                               ]],
			[[                                               ]],
			[[    - By Mr. Roiz                              ]],
		},
	},
	config = function(plugin, opts)
		local dashboard = require("alpha.themes.dashboard")
		dashboard.section.header.val = opts.header
		local alpha = require("alpha")
		alpha.setup(dashboard.opts)
	end,
}
