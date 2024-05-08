-------------------------------------------------------------------------------
-- Telescope Plugin
-- https://github.com/nvim-telescope/telescope.nvim
-- To fuzzy find files and text.
-------------------------------------------------------------------------------

-- Install for better performance RipGrep first on your system.


return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
    --"folke/todo-comments.nvim",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    --local transform_mod = require("telescope.actions.mt").transform_mod

    --local trouble = require("trouble")
    --local trouble_telescope = require("trouble.providers.telescope")

    -- or create your custom action
    --local custom_actions = transform_mod({
      --open_trouble_qflist = function(prompt_bufnr)
       -- trouble.toggle("quickfix")
      --end,
    --})

    telescope.setup({
      defaults = {
        shorten_paths = false,
        prompt_prefix = '   ',
        selection_caret = '',
        path_display = { 'full' },
        border = true,
        borderchars = false,
        layout_strategy = 'horizontal',
        layout_config = {
          prompt_position = 'top',
          height = 0.99,
          width  = 0.99,
          horizontal = { preview_width = 0.5 },
          vertical = { preview_height = 0.5 },
      },
      sorting_strategy = 'ascending',
      mappings = {
        -- Normal mode:
        n = {
          -- Close Telescope:
          ['<C-q>'] = actions.close,
          ----- Results Panel: -----
          -- Open file in active buffer:
          ['<CR>'] = actions.select_default,
          -- Open file in new horizontal split:
          ['-'] = actions.select_horizontal,
          -- Open file in new vertical split:
        ['|'] = actions.select_vertical,
        -- Navigate down:
        ['j'] = actions.move_selection_next,
        -- Navigate up:
        ['k'] = actions.move_selection_previous,
        -- Jump to the middle:
        ['M'] = actions.move_to_middle,
        -- Jump to the top:
        ['gg'] = actions.move_to_top,
        -- Jump to the bottom:
        ['G'] = actions.move_to_bottom,
        -- Scroll up:
        ['<C-k>'] = actions.results_scrolling_up,
        -- Scroll down:
        ['<C-j>'] = actions.results_scrolling_down,
        ----- Preview Panel: -----
        -- Scroll up:
        ['<C-p-u>'] = actions.preview_scrolling_up,
        -- Scroll down:
        ['<C-p-d>'] = actions.preview_scrolling_down,
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
  },
  extensions = {
    extensions = {
      fzf = {
        -- False will only do exact matching:
        fuzzy = true,
        -- Override the generic sorter:
        override_generic_sorter = true,
        -- Override the file sorter:
        override_file_sorter = true,
        -- Options are 'ignore_case', 'respect_case', 'smart_case':
        case_mode = 'smart_case',
      },
      media_files = {
          -- Whitelist:
          -- Defaults are { 'png', 'jpg', 'mp4', 'webm', 'pdf' }
          filetypes = { 'png', 'webp', 'jpg', 'jpeg' },
          -- Find command (defaults is 'fd'):
          find_cmd = 'rg'
        }
      },
    -- Set the previewer to display the full path:
    previewer = function(opts)
      -- Get the full path of the selected entry:
      local path = require('telescope.previewers.utils').path_shorten(opts.entry.display)
      -- Build the previewer lines with the full path:
      local lines = vim.split(opts.preview, '\n')
      table.insert(lines, 2, 'Full Path: ' .. path)
      return lines
    end,
  },
    })

    -- Load FZF extension to improve performance:
    telescope.load_extension("fzf")

  vim.api.nvim_set_hl(0, "TelescopePromptTitle",   { fg = "#ABABAB", bg = "#252525"      })
  vim.api.nvim_set_hl(0, "TelescopeResultsTitle",  { fg = "#ABABAB", bg = "#252525"      })
  vim.api.nvim_set_hl(0, "TelescopePreviewTitle",  { fg = "#ABABAB", bg =  "#252525"     })
  vim.api.nvim_set_hl(0, "TelescopeNormal",        { fg = "#ABABAB", bg = "#191B1C"         })
  vim.api.nvim_set_hl(0, "TelescopeBorder",        { fg = "#ABABAB", bg = "#252525"      })
  vim.api.nvim_set_hl(0, "TelescopePromptBorder",  { fg = "#252525", bg = "#252525"   })
  vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { fg = "#252525", bg = "#252525"   })
  vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { fg = "#252525", bg = "#252525"   })
  vim.api.nvim_set_hl(0, "TelescopeSelection",     { fg = "#ABABAB", bg = "#252525"      })
  vim.api.nvim_set_hl(0, "TelescopePromptCounter", { fg = "#A5C25C", bg = "#252525" })
  vim.api.nvim_set_hl(0, "TelescopePromptPrefix",  { fg = "#ABABAB", bg = "NONE"               })  -- Magnifying glass.
  vim.api.nvim_set_hl(0, "TelescopeMatching",      { fg = "#569CD6", bg = "NONE", bold = true, underline = true })  -- Matched text in autocomplete menu.

  ----------------------- Not used by now:
  vim.api.nvim_set_hl(0, "TelescopeSelectionCaret", { fg = "#287BDE",  bg = "#ED3276"          })
  vim.api.nvim_set_hl(0, "TelescopePreviewHyphen",  { fg = "#FF0000", bg =  "#45C8B0"         })

    ---------------------------------------------------------------------------
    -- Key Mappings

    vim.keymap.set('n', '<leader>ff', [[<cmd>lua require('telescope.builtin').find_files({ no_ignore = true, prompt_title = 'All Files' })<CR>]], { desc = "Find files including ignored ones (<Leader>ff)." })
    vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Find recent files (<Leader>fr)." })
    vim.keymap.set("n", "<leader>fc", "<cmd>Telescope live_grep<cr>", { desc = "Find chars in files (<Leader>fc)." })
    vim.keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find TODOs in files (<Leader>ft)." })


  end,
}
