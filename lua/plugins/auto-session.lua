local auto_session_options = {
	auto_session_enable_last_session = true,
	auto_session_use_git_branch = true,
}

return {
	"rmagatti/auto-session",
	dependencies = {
		"zwhitchcox/auto-session-nvim-tree",
	},
	config = function()
		local auto_session = require("auto-session")
		auto_session.setup(auto_session_options)

		local auto_session_nvim_tree = require("auto-session-nvim-tree")
		auto_session_nvim_tree.setup(auto_session)
	end,
}
