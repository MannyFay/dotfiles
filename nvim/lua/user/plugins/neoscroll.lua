-- ~/.config/nvim/lua/user/plugins/neoscroll.lua

-- https://github.com/karb94/neoscroll.nvim



------------------------------------------------------------------------------
-- Neoscroll Plugin
------------------------------------------------------------------------------

-- Import Neoscroll with a protected call, so it don't error out on first use:
local neoscroll_status_ok, neoscroll = pcall(require, 'neoscroll')
if not neoscroll_status_ok then
  return
end


------------------------------------------------------------
-- Appearance

neoscroll.setup({
  -- Put configuration here.
})
