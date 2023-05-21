-- ~/.config/nvim/lua/user/plugins/project.lua

-- https://github.com/ahmedkhalf/project.nvim



------------------------------------------------------------------------------
-- Project plugin
------------------------------------------------------------------------------

-- Import Project with a protected call, so it don't error out on first use:
local project_status_ok, project = pcall(require, 'project_nvim')
if not project_status_ok then
  return
end


------------------------------------------------------------
-- Appearance

project.setup({
  -- Activate Project plugin:
  active = true,
  on_config_done = nil,
  -- Disable manual mode to set working directory automatically:
  manual_mode = false,
  -- Use vim-rooter pattern to detect working directory ('lsp' can be a mess):
  detection_methols = { 'pattern' },
  -- Patterns to detect project root directory
  patterns = {
    '.git',
	'_darcs',
	'.hg',
	'.bzr',
	'.svn',
	'Makefile',
	'package.json'
  },
  -- Show hidden files in Telescope:
  show_hidden = true,
  -- Don't display a message if Project sets the working directory:
  silent_chdir = true,
  -- Table of LSP clients to ignore ('efm' for example):
  ignore_lsp = {},
  -- Scope to change directory of:
  scope_chdir = 'global',
  -- Path where Project will store the project history for Telescope:
  datapath = vim.fn.stdpath('data'),
})

-- Import Telescope with a protected call, so it don't error out on first use:
local telescope_status_ok, telescope = pcall(require, 'telescope')
if not telescope_status_ok then
  return
end

-- Enable Telescope integration:
telescope.load_extension('projects')

-- Enable Telescope projects picker:
--telescope.extensions.projects.projects{}
