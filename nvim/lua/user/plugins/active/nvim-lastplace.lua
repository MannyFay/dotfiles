-------------------------------------------------------------------------------
-- Nvim-LastPlace Plugin
-- https://github.com/ethanholz/nvim-lastplace
-- Place cursor on last place of editing if a file gets opened.
-------------------------------------------------------------------------------

return {
	"ethanholz/nvim-lastplace",
	config = function()
		local lastplace = require("nvim-lastplace")

		lastplace.setup({
			lastplace_ignore_buftype = {
				"quickfix",
				"nofile",
				"help",
			},
			lastplace_ignore_filetype = {
				"gitcommit",
				"gitrebase",
				"svn",
				"hgcommit",
			},
			lastplace_open_folds = true,
		})
	end,
}
