-------------------------------------------------------------------------------
-- Nvim-Colorizer Plugin
-- https://github.com/norcalli/nvim-colorizer.lua
-- For colorizing background of color values in code.
-------------------------------------------------------------------------------

return {
	"norcalli/nvim-colorizer.lua",
	config = function()
		local colorizer = require("colorizer")

		colorizer.setup({})
	end,
}
