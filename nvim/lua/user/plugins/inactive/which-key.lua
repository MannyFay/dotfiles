-------------------------------------------------------------------------------
-- Which-Key Plugin
-- https://github.com/folke/which-key.nvim
-------------------------------------------------------------------------------

return {
  "folke/which-key.nvim",
  event = "VeryLazy", -- Load it only if needed.
  init = function()
    vim.o.timeout    = true  -- Turn on after timeoutlen is elapsed.
    vim.o.timeoutlen = 500   -- Milliseconds till which-key waits to activate.
  end,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
}
