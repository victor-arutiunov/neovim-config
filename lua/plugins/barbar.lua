local barbar_config = {
	hide = {
		extensions = true,
		inactive = true,
	},
}

return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local barbar = require("barbar")
		barbar.setup(barbar_config)
	end,
}
