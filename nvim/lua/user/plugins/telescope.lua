-- ~/.config/nvim/lua/user/plugins/telescope.lua

-- https://github.com/nvim-telescope/telescope.nvim



------------------------------------------------------------------------------
-- Telescope Plugin
------------------------------------------------------------------------------

-- Import Telescope with a protected call, so it don't error out on first use:
local telescope_status_ok, telescope = pcall(require, 'telescope')
if not telescope_status_ok then
  return
end

local actions = require('telescope.actions')



------------------------------------------------------------
-- Appearance

-- Colors

local hl = vim.api.nvim_set_hl
hl(0, 'TelescopePromptTitle', { fg = '#ababab', bg = 'NONE' })
hl(0, 'TelescopePreviewTitle', { fg = '#ababab', bg = 'NONE' })
hl(0, 'TelescopePreviewBorder', { fg = '#252525', bg = '#252525' })
hl(0, 'TelescopePromptNormal', { fg = '#ababab', bg = '#252525' })
hl(0, 'TelescopePromptBorder', { fg = '#252525', bg = '#252525' })
hl(0, 'TelescopeNormal', { fg = '#ababab', bg = '#191B1C' })
hl(0, 'TelescopeBorder', { fg = '#ababab', bg = '#252525' })


-- Keymappings

local builtin = require('telescope.builtin')
-- Find files whithout ignored files by Git ( ff):
--[[ vim.keymap.set('n', '<leader>ff', builtin.find_files, {}) ]]
-- Find files with ignored files by Git ( ff):
vim.keymap.set('n', '<leader>ff', [[<cmd>lua require('telescope.builtin').find_files({ no_ignore = true, prompt_title = 'All Files' })<CR>]])
-- Find text inside files ( ft):
vim.keymap.set('n', '<leader>ft', builtin.live_grep, {})
-- Show all open buffers to switch between them ( fb):
--[[ vim.keymap.set('n', '<leader>fb', builtin.buffers, {}) ]]
--[[ vim.keymap.set('n', '<leader>fh', builtin.help_tags, {}) ]]
-- Show recent files:
vim.keymap.set('n', '<leader>rf', builtin.oldfiles, {})
--[[ vim.keymap.set('n', '<leader>rf', builtin.lsp_document_symbols, {}) ]]


-- Settings

telescope.setup {
  defaults = {
    prompt_prefix = '   ',
    selection_caret = '',
    path_display = { "smart" },
    border = true,
    borderchars = { ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ' },
    layout_config = {
      prompt_position = 'top',
      height = 0.99,
      width = 0.99,
    },
    sorting_strategy = 'ascending',
    mappings = {
      n = {
        ['<esc>'] = actions.close,
        ['<CR>'] = actions.select_default,
        ['<C-x>'] = actions.select_horizontal,
        ['<C-v>'] = actions.select_vertical,
        ['j'] = actions.move_selection_next,
        ['k'] = actions.move_selection_previous,
        ['M'] = actions.move_to_middle,
        ['gg'] = actions.move_to_top,
        ['G'] = actions.move_to_bottom,
        --[[ ['<C-u>'] = actions.results_scrolling_up, ]]
        --[[ ['<C-d>'] = actions.results_scrolling_down, ]]
        ['u'] = actions.preview_scrolling_up,
        ['d'] = actions.preview_scrolling_down,
      },
    },
    -- Ignore files in .git directory:
    file_ignore_patterns = { '.git/'},
  },
  pickers = {
    find_files = {
      hidden = true,
    },
    buffers = {
      previewer = false,
      layout_config = {
        width = 80,
      },
    },
    oldfiles = {
      prompt_title = 'Recent Files',
    },
    lsp_references = {
      previewer = false,
    },
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    extensions = {
        media_files = {
          -- filetypes whitelist
          -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
          filetypes = {"png", "webp", "jpg", "jpeg"},
          -- find command (defaults to `fd`)
          find_cmd = "rg"
        }
      },
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  },
}



-- Load FZF extension:
telescope.load_extension('fzf')

-- Load Live Grep Arguments extension:
telescope.load_extension('live_grep_args')

-- Load Media Files extension:
telescope.load_extension('media_files')
