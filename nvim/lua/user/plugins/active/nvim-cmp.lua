-------------------------------------------------------------------------------
-- Nvim CMP Plugin
-- https://github.com/hrsh7th/nvim-cmp
-- Plugin to provide auto completion.
-------------------------------------------------------------------------------

return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",  -- Load plugin only if entering insert mode.
  dependencies = {
    "hrsh7th/cmp-buffer", -- Completion source based on existing text in buffer.
    "hrsh7th/cmp-path", -- Completion source for file system paths.
    {
      "L3MON4D3/LuaSnip", -- For providing code snippets.
      -- follow latest release.
      version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
      -- install jsregexp (optional!).
      build = "make install_jsregexp",
    },
    "saadparwaiz1/cmp_luasnip", -- Completion source for LuaSnip.
    "rafamadriz/friendly-snippets", -- Set of useful code snippets.
    "onsails/lspkind.nvim", -- Pictograms for auto completion menu.
  },
  config = function()
    local cmp = require("cmp")
    
    local luasnip = require("luasnip")

    local lspkind = require("lspkind")

    -- loads vscode style snippets from installed plugins (e.g. friendly-snippets)
    require("luasnip.loaders.from_vscode").lazy_load()

    cmp.setup({
      completion = {
        completeopt = "menu,menuone,preview,noselect",
      },
      snippet = { -- configure how nvim-cmp interacts with snippet engine
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
        -- Key bindings for completion:
      mapping = cmp.mapping.preset.insert({
        ['<C-Tab']  = cmp.mapping.confirm({ select = true }),       -- Confirm auto complete selection.
        ['<S-Tab>'] = cmp.mapping.select_prev_item(),               -- To previous list item.
        ['<Tab>']   = cmp.mapping.select_next_item(),               -- To next list item.
        ['<C-q>']   = cmp.mapping.abort(),                          -- Quit suggestion popup.
        ['<C-j>']   = cmp.mapping.scroll_docs(4),                   -- Scroll down in docs.
        ['<C-k>']   = cmp.mapping.scroll_docs(-4),                  -- Scroll up in docs.
        ['<C-c>']   = cmp.mapping.complete(),                       -- Show completion suggestions.
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "luasnip"  },
        { name = "buffer"   },
        { name = "path"     },
      }),
      -- Icon set in completion menu:
      formatting = {
        format = lspkind.cmp_format({
          maxwidth = 1000,
          ellipsis_char = '...',
        }),
      },
    })
  end
}
