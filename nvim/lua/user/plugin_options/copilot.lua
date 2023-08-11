-- ~/.dotfiles/nvim/lua/user/plugin_options/copilot.lua

-- https://github.com/github/copilot.vim/tree/release



-------------------------------------------------------------------------------
-- Copilot Plugin
-------------------------------------------------------------------------------

-- Disable/enable filetypes:
vim.g.copilot_filetypes = {
  xml = true,
  lua = true,
  php = true,
  html = true,
  -- Turn of all suggestions for all filetypes:
  --[[ ['*'] = false, ]]
}

-- Change the accept suggestions key:
vim.cmd[[imap <silent><script><expr> <C-<Space> copilot#Accept("\<CR>")]]
-- Disable tab key for Copilot:
vim.g.copilot_no_tab_map = true
-- Same as above but in lua:
--[[ vim.keymap.set.keymap('i', '<C-<Leader>', ":copilot#Accept('\\<CR>')<CR>", { silent = true }) ]]

-- Dismiss the current suggestion:
-- <c-]> <Plug>(copilot-dismis)

-- Cycle to next suggestion:
-- regular: *copilot-i-ALT-]*
-- <M-]> <Plug>(copilot-next)

-- Cycle to previous suggestion:
-- regular: *copilot-i_ALT-[*
-- <M-[> <Plug>(copilot-previous)

--[[ vim.cmd[[higlight CopilotSuggestion guifg=#606366 ctermfg=8]]

-- alt+[ = show how many suggestions Copilot can provide.
