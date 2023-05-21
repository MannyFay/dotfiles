-- ~/.config/nvim/lua/user/plugins/colorscheme.lua

-- https://github.com/MannyFay/mannydark.nvim



------------------------------------------------------------------------------
-- Colorscheme Plugin
------------------------------------------------------------------------------

-- Solved in plugins.lua file by now!
vim.cmd [[
try
  colorscheme mannydark
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
