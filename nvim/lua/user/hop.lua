-- ~/.config/nvim/lua/user/hop.lua

-- https://github.com/phaazon/hop.nvim

-------------------------------------------------------------------------------
-- Variables & Objects
-------------------------------------------------------------------------------

-- Load hop plugin:
local hop = require('hop')



-------------------------------------------------------------------------------
-- Settings
-------------------------------------------------------------------------------

hop.setup {
  -- Hop configuration goes there:
  multi_windows = true,
}



-------------------------------------------------------------------------------
-- Keymaps
-------------------------------------------------------------------------------

-- Search for charakter in (multiple) buffer (  c):
vim.api.nvim_set_keymap(
    "n", "<Leader><Leader>c", ":HopChar1MW<CR>",
    { noremap = false, silent = true }
)

-- Search for word in (multiple) buffer (  w):
vim.api.nvim_set_keymap(
    "n", "<Leader><Leader>w", ":HopWordMW<CR>",
    { noremap = false, silent = true }
)

-- Search and highlight pattern in (multiple) buffer (  p):
vim.api.nvim_set_keymap(
    "n", "<Leader><Leader>p", ":HopPatternMW<CR>",
    { noremap = false, silent = true }
)

-- Hop to a line start in (multiple) buffer (  l):
vim.api.nvim_set_keymap(
    "n", "<Leader><Leader>l", ":HopLineMW<CR>",
    { noremap = false, silent = true }
)

-- Hop to a word in current line (  f):
vim.api.nvim_set_keymap(
    "n", "<Leader><Leader>r", ":HopWordCurrentLine<CR>",
    { noremap = false, silent = true }
)
