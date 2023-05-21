-- ~/.config/nvim/lua/user/plugins/guess-indent.lua

-- https://github.com/NMAC427/guess-indent.nvim

-- https://github.com/Darazaki/indent-o-matic if guess indent is to slow!

------------------------------------------------------------------------------
-- Guess Indent Plugin
------------------------------------------------------------------------------

-- Import Unimpaired with a protected call, so it don't error out on first use:
local guess_indent_status_ok, guess_indent = pcall(require, 'guess-indent')

if not guess_indent_status_ok then
  return
end


------------------------------------------------------------
-- Appearance

guess_indent.setup({
  -- Enable automatic execution of plugin:
  auto_cmd = true,
  -- Don't overwrite settings of .editorconfig file:
  override_editorconfig = false,
  -- Filetypes where autmatic execution of plugin is disabled:
  filetype_exclude = {
    'netrw',
    'tutor',
  },
  -- Buffer types where automatig execution of plugin is disabled:
  buftype_exclude = {
    'help',
    'nofile',
    'terminal',
    'prompt',
  },
})
