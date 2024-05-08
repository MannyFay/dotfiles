-------------------------------------------------------------------------------
-- Indent-Blankline Plugin
-- https://github.com/lukas-reineke/indent-blankline.nvim
-- For displaying vertical indent lines.
-------------------------------------------------------------------------------

-- Set up highlight groups:
local highlight = {
  'IndentBlanklineChar',
}

-- Pass colors to highlight groups:
local hooks = require('ibl.hooks')
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
  vim.api.nvim_set_hl(0, 'IndentBlanklineChar', { fg = '#252525' })
end)

return {
  "lukas-reineke/indent-blankline.nvim",
  event = { "BufReadPre", "BufNewFile" },
  main = "ibl",
  opts = {
    indent = {
      char = "▏",
      highlight = highlight,
    },
    scope = {
      enabled = false,  -- 'true': Highlight only the intended indentation and the current scope by an underline.
    },
  },
}
