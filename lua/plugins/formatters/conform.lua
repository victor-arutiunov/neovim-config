local setup = {
	formatters_by_ft = {
		javascript = { "prettier" },
		typescript = { "prettier" },
		typescriptvue = { "prettier" },
		css = { "prettier" },
		html = { "prettier" },
		json = { "prettier" },
		yaml = { "prettier" },
		markdown = { "prettier" },
		lua = { "stylua" },
		python = { "isort", "black" },
	},
	format_on_save = {
		timesout_ms = 500,
		lsp_fallback = true,
	},
}

return {
	"stevearc/conform.nvim",
	config = function()
		local conform = require("conform")
		conform.setup(setup)
	end,
}
