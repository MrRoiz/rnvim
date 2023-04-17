return {
	"lukas-reineke/indent-blankline.nvim",
	opts = {
		show_current_context = true,
		show_current_context_start = true,
	},
	init = function()
		vim.opt.list = true
	end,
}
