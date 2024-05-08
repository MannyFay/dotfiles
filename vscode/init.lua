-------------------------------------------------------------------------------
-- Key Mappings
-------------------------------------------------------------------------------

------------------------------------------------------------
-- Modes

--   normal_mode       = 'n'
--   insert_mode       = 'i',
--   visual_mode       = 'v',
--   visual_block_mode = 'x',
--   term_mode         = 't',
--   command_mode      = 'c',


------------------------------------------------------------
-- Variables


local vscode = require('vscode-neovim')


-------------------------------------------------------------------------------
-- Default Key Mappings
-------------------------------------------------------------------------------


vim.g.mapleader      = ' '                                              -- Set <Leader> to space globally (standard is \).
vim.g.maplocalleader = ' '                                              -- Set <Leader> to space per buffer (standard is \).

vim.keymap.set('n', '<Leader>/', vscode.action("editor.action.commentLine"))                       -- Comment line.
