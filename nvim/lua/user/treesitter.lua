-- ~/.config/nvim/lua/user/treesitter.lua

-- https://github.com/nvim-treesitter/nvim-treesitter

------------------------------------------------------------------------------
-- Variables & Objects
------------------------------------------------------------------------------

-- Load Treesitter:
local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end



------------------------------------------------------------------------------
-- Settings
------------------------------------------------------------------------------

configs.setup {
  ensure_installed = "all", -- "all" (parsers with maintainers), or a list of languages
  sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
  ignore_install = { "" }, -- List of parsers to ignore installing
  autopairs = {
    enable = true,
  },
  highlight = {
    -- Enable syntax highlighting:
    enable = true,
    -- Languages where color highlighting is disabled:
    disable = { "markdown", "css"},
    additional_vim_regex_highlighting = false,
  },
  indent = { enable = true, disable = { "yaml" } },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
  matchup = {
    -- mandatory, false will disable the whole extension
    enable = true,
    disable = { "c", "ruby" },  -- optional, list of language that will be disabled
    -- [options]
  },
}
