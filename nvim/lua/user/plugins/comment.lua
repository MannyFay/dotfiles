-- ~/.config/nvim/lua/user/plugins/comment.lua

-- https://github.com/numToStr/Comment.nvim



------------------------------------------------------------------------------
-- Comment Plugin
------------------------------------------------------------------------------

-- Import Comment with a protected call, so it don't error out on first use:
local comment_status_ok, comment = pcall(require, 'Comment')

if not comment_status_ok then
  return
end


------------------------------------------------------------
-- Appearance

comment.setup {
  pre_hook = function(ctx)
    local U = require 'Comment.utils'
    local location = nil

    if ctx.ctype == U.ctype.block then
      location = require('ts_context_commentstring.utils').get_cursor_location()
    elseif ctx.cmotion == U.cmotion.v or ctx.cmotion == U.cmotion.V then
      location = require('ts_context_commentstring.utils').get_visual_start_location()
    end

    return require('ts_context_commentstring.internal').calculate_commentstring {
      key = ctx.ctype == U.ctype.line and '__default' or '__multiline',
      location = location,
    }
  end,
  -- Add a space after and before the comment symbol:
  padding = true,
  -- Stay with curser on it's position if commenting stuff:
  sticky = true,
  -- Lines to be ignored while (un)comment:
  ignore = nil,
  -- Keymappings in normal mode:
  toggler = {
      -- Line-comment ( /):
      line = '<Leader>/',
      -- Block-comment ( b/):
      block = '<Leader>b/',
  },
  -- Keymappings in visual mode:
  opleader = {
      -- Line-comment ( /):
      line = '<Leader>/',
      -- Block-comment ( b/):
      block = '<Leader>b/',
  },
  -- Extra keymappings:
  --[[ extra = { ]]
  --[[   -- Add comment on the line above: ]]
  --[[   above = 'gcO', ]]
  --[[   -- Add comment on the line below: ]]
  --[[   below = 'gco', ]]
  --[[   --Add comment at the end of line: ]]
  --[[   eol = 'gcA', ]]
  --[[ }, ]]
  -- Enable keybindings:
  -- Note: If given `false`, then the plugin won't create any mappings.
  mappings = {
    -- Activate basic keymappings (normal and visual mode):
    basic = true,
    -- Activate extra keymappings:
    --[[ extra = true, ]]
  },
  -- Function to call before (un)comment:
  pre_hook = nil,
  -- Function to call after (un)comment:
  post_hook = nil,
}
