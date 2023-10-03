-- General config
vim.wo.number = true

-- Plugin manager
require("./lazy")

-- Mapping
local set_keymap = function(lhs, rhs)
	vim.keymap.set('n', lhs, rhs, {noremap=true, silent=true})
end
set_keymap('<C-C>', '"+y')
set_keymap('<C-V>', '"+p')

-- Appearance
vim.g.neovide_transparency=0.9
vim.g.neovide_padding_top=10
vim.g.neovide_padding_left=10
vim.g.neovide_hide_mouse_when_typing=true

-- Themes
vim.cmd.colorscheme 'catppuccin-mocha'


