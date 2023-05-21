-- ~/.config/nvim/lua/user/plugins/unimpaired.lua

-- https://github.com/Tummetott/unimpaired.nvim



------------------------------------------------------------------------------
-- Unimpaired Plugin
------------------------------------------------------------------------------

-- Import Unimpaired with a protected call, so it don't error out on first use:
local unimpaired_status_ok, unimpaired = pcall(require, 'unimpaired')

if not unimpaired_status_ok then
  return
end


------------------------------------------------------------
-- Appearance

unimpaired.setup({
  -- Put configuration here or let it empty for the default.

})
