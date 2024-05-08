-------------------------------------------------------------------------------
-- Treesitter Plugin
-- https://github.com/nvim-treesitter/nvim-treesitter
-- For highlighting and parsing.
-------------------------------------------------------------------------------

return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
      highlight = {
        enable = false  -- Disable Treesitter syntax highlighting.
      },
      indent = {
        enable = true   -- Activate automatic indentation.
      },
      autotag = {
        enable = true,  -- Enable autotagging (nvim-ts-autotag plugin).
      },
      ensure_installed = {
        "angular",
        "arduino",
        "bash",
        "c",
        "c_sharp",
        "cmake",
        "cpp",
        "css",
        "csv",
        "dockerfile",
        "git_config",
        "git_rebase",
        "gitattributes",
        "gitcommit",
        "gitignore",
        "go",
        "graphql",
        "html",
        "java",
        "javascript",
        "json",
        "jsonc",
        "kotlin",
        "latex",
        "lua",
        "make",
        "markdown",
        "markdown_inline",
        "php",
        "php_only",
        "phpdoc",
        "prisma",
        "python",
        "query",
        "regex",
        "rust",
        "scss",
        "sql",
        "ssh_config",
        "svelte",
        "swift",
        "terraform",
        "tmux",
        "toml",
        "tsx",
        "twig",
        "typescript",
        "typoscript",
        "vim",
        "vimdoc",
        "vue",
        "xml",
        "yaml",
      },
    })
  end

}
