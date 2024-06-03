return {
	"akinsho/toggleterm.nvim",
	config = function()
		local tterm = require("toggleterm")
		tterm.setup({
			size = 20,
			open_mapping = [[<C-\>]],
			start_in_insert = true,
			direction = "float",
		})
	end,
}
