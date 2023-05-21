-- ~/.config/nvim/lua/user/plugins/splitjoin.lua

-- https://github.com/bennypowers/splitjoin.nvim



------------------------------------------------------------------------------
-- Splitjoin Plugin
------------------------------------------------------------------------------

-- Import Splitjoin with a protected call, so it don't error out on first use:
--[[ local splitjoin_status_ok, splitjoin = pcall(require, 'splitjoin') ]]
--[[ if not splitjoin_status_ok then ]]
--[[   return ]]
--[[ end ]]


------------------------------------------------------------
-- Appearance

--[[ splitjoin.setup({ ]]
--[[   lazy = true, ]]
--[[   keys = { ]]
--[[     { 'gj', function() splitjoin.join() end, desc = 'Join the object under cursor' }, ]]
--[[     { 'g,', function() splitjoin.split() end, desc = 'Split the object under cursor' }, ]]
--[[   }, ]]
--[[ }) ]]
