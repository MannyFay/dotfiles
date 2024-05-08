-------------------------------------------------------------------------------
-- Maximizer Plugin
-- https://github.com/0x00-ketsu/maximizer.nvim
-- To maximize the current split.
-------------------------------------------------------------------------------

return {
    "0x00-ketsu/maximizer.nvim",
    config = function()
      local maximizer = require("maximizer")
      
      maximizer.setup({
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      })
    end,
    vim.api.nvim_set_keymap("n", "<leader>m", '<cmd>lua require("maximizer").toggle()<CR>', {silent = true, noremap = true, desc = "Min- and maximize current split (<Leader>m)." })
    --vim.api.nvim_set_keymap("n", "<leader>m", '<cmd>lua require("maximizer").maximize()<CR>', {silent = true, noremap = true, desc = "Min- and maximize current split (<Leader>m)." })
    --vim.api.nvim_set_keymap('n', 'mr', '<cmd>lua require("maximizer").restore()<CR>', {silent = true, noremap = true})
}
