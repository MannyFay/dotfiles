-- ~/.config/nvim/lua/user/plugins/nvim-surround.lua

-- https://github.com/kylechui/nvim-surround



------------------------------------------------------------------------------
-- Neovim Surround Plugin
------------------------------------------------------------------------------

-- Import Neovim Surround with a protected call, so it don't error out on first use:
local nvim_surround_status_ok, nvim_surround = pcall(require, 'nvim-surround')

if not nvim_surround_status_ok then
  return
end


------------------------------------------------------------
-- Appearance

--local input      = require('nvim-surround.input')
--local functional = require('nvim-surround.functional')

nvim_surround.setup({
  -- Put configuration in here or let it empty for the default.

  -- Default commands:
  -- ysiw)     = surround word with ()
  -- ys$"      = surround till end of line with ""
  -- ds]       = erase [] around line
  -- dst       = remove HTML tags of the element
  -- cs'"      = change quotes from ' to "
  -- csth1<CR> = change HTML tag to <h1>
  -- dsf       = erase () around actual content
})
