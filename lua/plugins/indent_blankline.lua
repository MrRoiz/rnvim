return {
	"lukas-reineke/indent-blankline.nvim",
	version = "^2",
	opts = {
		show_current_context = true,
		show_current_context_start = true,
	},
	init = function()
		vim.opt.list = true
	end,
}
