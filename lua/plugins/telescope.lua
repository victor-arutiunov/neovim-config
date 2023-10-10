return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		vim.keymap.set("n", "<leader>ff", "<Cmd>:Telescope find_files<CR>")
		vim.keymap.set("n", "<leader>fb", "<Cmd>:Telescope buffers<CR>")
	end,
}
