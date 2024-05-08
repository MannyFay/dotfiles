-------------------------------------------------------------------------------
-- Auto-Session Plugin
-- https://github.com/rmagatti/auto-session
-- This plugin restores the last session with it's opened files and buffers.
-------------------------------------------------------------------------------

return {
  "rmagatti/auto-session",
  config = function()
    local auto_session = require("auto-session")

    auto_session.setup({
      auto_restore_enabled = true, -- Restore sessions automatically.
      auto_session_suppress_dirs = {  -- Directories that are ignored.
        "~/",
      },
    })


    ---------------------------------------------------------------------------
    -- Key Mappings

    --vim.keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" }) -- restore last workspace session for current directory
    --vim.keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" }) -- save workspace session for current working directory
  end,
}
