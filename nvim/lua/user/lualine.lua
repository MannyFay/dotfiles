-- ~/.config/nvim/lua/user/lualine.lua

-- https://github.com/nvim-lualine/lualine.nvim

------------------------------------------------------------------------------
-- Variables & Objects
------------------------------------------------------------------------------

local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
	return
end

local hide_in_width = function()
	return vim.fn.winwidth(0) > 80
end

local colors = {
  --white = "#CFD2D5",
  --black = "#191B1C",
  --blue = "#569CD6",
  --blue_link = "#287BDE",
  --gray = "#606366", -- gray = "#808080",
  --gray_dark = "#252525",
  --green = "#4FA544",
  --green_light = "#A5C25C",
  --red = "#FF0000",
  --red_light = "#CE9178",
  --orange = "#E8BF6A",
  --purple = "#C064C7",
  --turquoise = "#45C8B0",
  --pink = "#ed3276",
  --yellow = "#DCDCAA",


  bg       = '#252525',
  fg       = '#CFD2D5',
  --yellow   = '#ECBE7B',
  cyan     = '#008080',
  --darkblue = '#081633',
  darkblue = '"#FF0000',
  --green    = '#98be65',
  --orange   = '#FF8800',
  violet   = '#a9a1e1',
  magenta  = '#c678dd',
  --blue     = '#51afef',
  --red      = '#ec5f67',
}

-- Set up Git branches:
local branch = {
	"branch",
	icons_enabled = true,
    colored = true,
	icon = "",
    padding = { left = 0, right = 1},
}

-- Set up to display errors and warnings:
local diagnostics = {
	"diagnostics",
    padding = 1,
	sources = { "nvim_diagnostic" },
	sections = { "error", "warn" },
	symbols = { error = " ", warn = " " },
	colored = false,
	update_in_insert = false,
	always_visible = true,
}

-- Set up Git diagnostics:
local diff = {
	"diff",
	colored = true,
	symbols = { added = " ", modified = " ", removed = " " }, -- changes diff symbols
  cond = hide_in_width
}

-- Set up to display Vim mode:
--[[ local mode = {
	"mode",
	fmt = function(str)
		return "-- " .. str .. " --"
	end,
} ]]

-- Show type of the file on the right side:
--[[ local filetype = {
	"filetype",
	icons_enabled = false,
	icon = nil,
} ]]


local location = {
	"location",
	padding = 1,
}

-- Progress bar of cursor position in file:
local progress = function()
	local current_line = vim.fn.line(".")
	local total_lines = vim.fn.line("$")
	local chars = { "__", "▁▁", "▂▂", "▃▃", "▄▄", "▅▅", "▆▆", "▇▇", "██" }
	local line_ratio = current_line / total_lines
	local index = math.ceil(line_ratio * #chars)
	return chars[index]
end

local spaces = function()
	return "spaces: " .. vim.api.nvim_buf_get_option(0, "shiftwidth")
end



------------------------------------------------------------------------------
-- Settings
------------------------------------------------------------------------------




lualine.setup({
	options = {
		icons_enabled = true,
		--[[ theme = "auto", ]]
        --[[ theme = { ]]
--[[             normal = { c = { fg = colors.gray, bg = colors.red } },
            inactive = { c = { fg = colors.gray, bg = colors.black } }, ]]
        --[[ }, ]]
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = { "alpha", "dashboard", "NvimTree", "Outline" },
		always_divide_middle = true,
	},
	sections = {
        -- Show Vim mode on the left:
        lualine_a = {},
        -- Show Git branch and file diagnostics:
		lualine_b = { branch, diagnostics },
        -- Display file path from root:
		--lualine_c = { "%f" },
        --lualine_c = {
        --    { '%{luaeval("require(\"nvim-tree.lib\").get_node_at_cursor().relative_path")}%', path = 1 },
        --},
        -- Show how many spaces the tab key uses and the file encoding:
		-- lualine_x = { "encoding", "fileformat", "filetype" },
		lualine_x = { diff, spaces, "encoding", filetype },
        -- Show line and column number of cursor:
		lualine_y = { location },
        -- Show progress because of cursor position on the right:
		lualine_z = { progress },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
    winbar = {},
    inactive_winbar = {},
	extensions = {},
})
