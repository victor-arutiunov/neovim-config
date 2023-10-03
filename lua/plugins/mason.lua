local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")

mason.setup()
mason_lspconfig.setup {
	ensure_installed = {
		"pyright",
		"eslint",
		"lua_ls",
		"rust_analyzer",
		"html",
		"sqlls",
		"cssls",
		"bashls",
		"tsserver",
		"marksman",
	}
}

