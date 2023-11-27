------------------------------------------------------------------------------
-- Indent Blankline Plugin
-- https://github.com/lukas-reineke/indent-blankline.nvim
------------------------------------------------------------------------------


-- Import Indent Blankline with a protected call:
local indent_blankline_status_ok, indent_blankline = pcall(require, 'ibl')
if not indent_blankline_status_ok then
  return "Error: */lua/user/plugin_options/indent-blankline.lua -> Indent Blankline plugin could not be loaded. Sure you have installed it in your plugins file?"
end


------------------------------------------------------------
-- Appearance

-- Set up highlight groups:
local highlight = {
  'IndentBlanklineChar',
}

-- Pass colors to highlight groups:
local hooks = require('ibl.hooks')
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
  vim.api.nvim_set_hl(0, 'IndentBlanklineChar', { fg = '#252525' })
end)

indent_blankline.setup({
  indent = {
    char = '▏',
    highlight = highlight,
  },
  scope = {
    enabled = false,  -- 'true': Highlight only the intended indentation and the current scope by an underline.
  },
  exclude = {
    filetypes = {
      'help',
      'packer',
      'NvimTree',
      'Trouble',
      'dashboard',
      'TelescopePrompt',
      'TelescopeResults',
      'TelescopePreviewer',
      'lspinfo',
      'startify',
      'fugitive',
      'fugitiveblame',
      'gitcommit',
      'gitrebase',
      'svn',
      'hgcommit',
    },
    buftypes = {
      'terminal',
      'nofile',
      'quickfix',
      'prompt',
    },
  },
})
vim.cmd[[autocmd VimEnter,BufNewFile,BufRead * source %]] -- not working