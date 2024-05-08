-------------------------------------------------------------------------------
-- Nvim Surround Plugin
-- https://github.com/kylechui/nvim-surround
-- Plugin to surround text with specific characters.
-------------------------------------------------------------------------------

return {
  "kylechui/nvim-surround",
  event = { "BufReadPre", "BufNewFile" },
  version = "*", -- Use for stability; omit to use `main` branch for the latest features
  config = function()
    require("nvim-surround").setup({
    })
      ------------------------------------------------------------
      -- Key Mappings

      -- Surround word with ():
      vim.keymap.set("n", "((", "ysiw)", { remap = true })
      -- Surround word with {}:
      vim.keymap.set("n", "{{", "ysiw}", { remap = true })
      -- Surround word with []:
      vim.keymap.set("n", "[[", "ysiw]", { remap = true })
      -- Surround word with "":
      vim.keymap.set("n", '""', 'ysiw"', { remap = true })
      -- Surround word with '':
      vim.keymap.set("n", "''", "ysiw'", { remap = true })
      -- Surround word with ``:
      vim.keymap.set("n", "``", "ysiw`", { remap = true })
      -- Surround word with <>:
      vim.keymap.set("n", "<>", "ysiw>", { remap = true })

      -- Surround marked with ():
      vim.keymap.set("v", "((", "S)", { remap = true })
      -- Surround marked with {}:
      vim.keymap.set("v", "{{", "S}", { remap = true })
      -- Surround marked with []:
      vim.keymap.set("v", "[[", "S]", { remap = true })
      -- Surround marked with "":
      vim.keymap.set("v", '""', 'S"', { remap = true })
      -- Surround marked with '':
      vim.keymap.set("v", "''", "S'", { remap = true })
      -- Surround marked with ``:
      vim.keymap.set("v", "``", "S`", { remap = true })
      -- Surround marked with <>:
      vim.keymap.set("v", "<>", "S>", { remap = true })


      -- Surround with tag:
      vim.keymap.set("n", "swt", "ySSt", { remap = true })
      -- Surround marked with tag:
      vim.keymap.set("v", "swt", "St", { remap = true })
  end,
}

