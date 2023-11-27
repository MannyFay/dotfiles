-- ~/.dotfiles/nvim/lua/user/plugin_options/dotenv.lua

-- https://github.com/ellisonleao/dotenv.nvim



-------------------------------------------------------------------------------
-- Dotenv Pluging
-------------------------------------------------------------------------------

-- Import Dotenv plugin with a protected call:
local dotenv_status_ok, dotenv = pcall(require, 'dotenv')
if not dotenv_status_ok then
  return "Error: Dotenv plugin could not be loaded. Sure you have installed it in your plugins file?"
end


------------------------------------------------------------
-- Appearance

dotenv.setup({
  enable_on_load = true,   -- Load .env if buffer gets opened.
  verbose        = false,  -- Show error notification if .env file is not found and if .env is loaded.
})
