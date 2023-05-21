-- ~/.config/nvim/lua/user/nvim-tree.lua

------------------------------------------------------------------------------
-- Variables & Objects
------------------------------------------------------------------------------

local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
  return
end

local tree_cb = nvim_tree_config.nvim_tree_callback



------------------------------------------------------------------------------
-- Settings
------------------------------------------------------------------------------

-- Open Nvim-Tree by default if Nvim starts:
vim.cmd('autocmd VimEnter * NvimTreeOpen')

-- Open file in new split but stay in tree:
-- vim.api.nvim_set_keymap('n', '<CR>', ":lua require'nvim-tree'.on_keypress('edit')<CR>:lua require'nvim-tree'.on_keypress('change_dir')<CR>", { noremap = true, silent = true })

-- Open file from Nvim-Tree in a new split
-- command! NvimTreeOpenInSplit execute 'vsplit' expand('%:p') | wincmd p | NvimTreeFocus



--------------------------------------------------------------
-- Icons

vim.g.nvim_tree_icons = {
  default = "",
  symlink = "",
  git = {
    --[[ unstaged = "", ]]
    unstaged = " ",
    --[[ staged = "S", ]]
    staged = " ",
    --[[ unmerged = "", ]]
    unmerged = " ",
    --[[ renamed = "➜", ]]
    renamed = " ",
    deleted = " ",
    --[[ untracked = "U", ]]
    untracked = " ",
    --[[ ignored = "◌", ]]
    ignored = " ",
  },
  folder = {
    default = "",
    open = "",
    empty = "",
    empty_open = "",
    symlink = "",
  },
}


--------------------------------------------------------------
-- Setup

nvim_tree.setup {
  -- Settings for Project plugin:
  sync_root_with_cwd = true,
  respect_buf_cwd = true,
  update_focused_file = {
    enable = true,
    update_root = true
  },
  -- Regular settings of Nvim Tree:
  on_attach = on_attach,
  disable_netrw = true,
  hijack_netrw = true,
  open_on_tab = false,
  hijack_cursor = false,
  update_cwd = true,
  diagnostics = {
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  --[[ update_focused_file = { ]]
  --[[   enable = true, ]]
  --[[   update_cwd = true, ]]
  --[[   ignore_list = {}, ]]
  --[[ }, ]]
  system_open = {
    cmd = nil,
    args = {},
  },
  filters = {
    dotfiles = false,
    custom = {},
    nvim_tree_ignore = {},
  },
  git = {
    enable = true,
    ignore = false,
    timeout = 500,
  },
  view = {
    width = 46,
    hide_root_folder = false,
    side = "left",
    mappings = {
      custom_only = false,
      list = {
        --{ key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
        --{ key = "h", cb = tree_cb "close_node" },
	  -- Toggle Nvim-Tree:
       -- { key = "<Space>tt", cb = tree_cb "NvimTreeToggle" },

	  -- Open file in new vertical split:
        { key = "s", cb = tree_cb "vsplit" },
	  -- Open file in new horizontal split:
        { key = "i", cb = tree_cb "split" },
        --{ key = "go", cb = tree_cb("vsplit") },
      },
    },
    number = false,
    relativenumber = false,
  },
  trash = {
    cmd = "trash",
    require_confirm = true,
  },
  actions = {
    open_file = {
      quit_on_open = false,
      window_picker = {
        enable = false,
      },
    },
  },
}
