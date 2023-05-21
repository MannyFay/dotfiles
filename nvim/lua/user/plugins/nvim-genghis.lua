-- ~/.config/nvim/lua/user/plugins/nvim-genghis.lua

-- https://github.com/chrisgrieser/nvim-genghis



------------------------------------------------------------------------------
-- Neovim Genghis Plugin
------------------------------------------------------------------------------

-- Import Neovim Genghis with a protected call, so it don't error out on first use:
local nvim_genghis_status_ok, nvim_genghis = pcall(require, 'genghis')

if not nvim_genghis_status_ok then
  return
end


------------------------------------------------------------
-- Appearance

local keymap = vim.keymap.set

-- Disable Ex-Commands:
vim.g.genghis_disable_commands = true

nvim_genghis.setup({
  -- Put configuration here or let it empty for the default.
  --[[ keymap("n", "<leader>yp", nvim_genghis.copyFilepath), ]]
  --[[ keymap("n", "<leader>yn", nvim_genghis.copyFilename), ]]
  --[[ keymap("n", "<leader>cx", nvim_genghis.chmodx), ]]
  --[[ keymap("n", "<leader>rf", nvim_genghis.renameFile), ]]
  --[[ keymap("n", "<leader>mf", nvim_genghis.moveAndRenameFile), ]]
  --[[ keymap("n", "<leader>nf", nvim_genghis.createNewFile), ]]
  --[[ keymap("n", "<leader>yf", nvim_genghis.duplicateFile), ]]
  --[[ keymap("n", "<leader>df", function () nvim_genghis.trashFile{trashLocation = "your/path"} end), -- default: "$HOME/.Trash". ]]
  --[[ keymap("x", "<leader>x", nvim_genghis.moveSelectionToNewFile), ]]
})
