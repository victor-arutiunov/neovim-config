local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	{ import = "plugins" },
	{ import = "plugins.lsp" },
	{ import = "plugins.formatters" },
	{ import = "plugins.themes" },
}
local config = {
	change_detection = {
		enabled = false,
	},
}

require("lazy").setup(plugins, config)
