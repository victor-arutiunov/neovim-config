 
local keymap = vim.keymap
local default_config = {noremap=true, silent=true}

keymap.set('n', '<C-C>', '"+y', default_config)
keymap.set('n', '<C-V>', '"+p', default_config)
keymap.set('n', '<F7>', '<Cmd>:tabprevious<CR>', default_config)
keymap.set('n', '<F8>', '<Cmd>:tabnext<CR>', default_config)
