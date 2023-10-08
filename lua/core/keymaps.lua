local keymap = vim.keymap

local default_config = { noremap = true, silent = true }

local n = { "n" }
local i = { "i" }
local ni = { "n", "i" }

-- Buffer
keymap.set(n, "<C-C>", '"+y', default_config)
keymap.set(n, "<C-V>", '"+p', default_config)

-- Tabs
keymap.set(ni, "<F5>", "<Cmd>:tabnew<CR>", default_config) -- open new tab
keymap.set(ni, "<F6>", "<Cmd>:tabclose<CR>", default_config) -- close tab
keymap.set(ni, "<F7>", "<Cmd>:tabprevious<CR>", default_config) -- go to previous tab
keymap.set(ni, "<F8>", "<Cmd>:tabnext<CR>", default_config) -- go to next tab

-- Workflow
keymap.set(ni, "<A-End>", "<Cmd>:wqa<CR>", default_config)
