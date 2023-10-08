local mason_setup = {
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
}
local mason_tool_installer_setup = {
	ensure_installed = {
		-- lsp
		"tsserver",
		"html",
		"cssls",
		"tailwindcss",
		"emmet_ls",
		"pyright",
		-- formatters
		"stylua",
		"isort",
		"black",
		"prettier",
	},
	auto_update = true,
}

return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		mason.setup()
		mason_lspconfig.setup(mason_lspconfig_setup)
		mason_tool_installer.setup(mason_tool_installer_setup)
	end,
}
