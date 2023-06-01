return {
	"goolord/alpha-nvim",
	dependencies = { "nvim-tree-nvim-web-devicons" },
	opts = function()
		local dashboard = require("alpha.themes.dashboard")
		local logo = [[
			
			
			                           __
			  _ __    ___     __  __  /\_\     ___ ___
			 /\`'__\/' _ `\  /\ \/\ \ \/\ \  /' __` __`\
			 \ \ \/ /\ \/\ \ \ \ \_/ | \ \ \ /\ \/\ \/\ \
			  \ \_\ \ \_\ \_\ \ \___/   \ \_\\ \_\ \_\ \_\
			   \/_/  \/_/\/_/  \/__/     \/_/ \/_/\/_/\/_/
			
			
			    - By Mr. Roiz
		]]

		dashboard.section.header.val = vim.split(logo, "\n")
		dashboard.section.buttons.val = {
			dashboard.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
			dashboard.button("n", " " .. " New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("r", " " .. " Recent files", ":Telescope oldfiles initial_mode=normal <CR>"),
			dashboard.button("d", ""  .. " Check changes", ":DiffviewOpen<CR>"),
			dashboard.button("g", " " .. " Find text", ":Telescope live_grep <CR>"),
			dashboard.button("c", " " .. " Config", ":e $MYVIMRC <CR>"),
			dashboard.button("l", "󰒲 " .. " Lazy", ":Lazy<CR>"),
			dashboard.button("q", " " .. " Quit", ":qa<CR>"),
		}

		return dashboard
	end,
	config = function(plugin, opts)
		require("alpha").setup(opts.opts)
	end,
}
