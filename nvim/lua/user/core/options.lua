------------------------------------------------------------------------------
-- Default Neovim Settings
------------------------------------------------------------------------------
vim.opt.colorcolumn = "80" -- Show visual guide line.

vim.opt.showmode = false -- Don't show Vim modes.
vim.opt.numberwidth = 5 -- Set width of number column.
vim.opt.errorbells = false -- Turn off all error bells.
vim.opt.listchars = { tab = "▸ ", trail = "·" } -- Character to show for tabs and trailing spaces.
vim.opt.spell = true -- Enable spell checking.
vim.loader.enable() -- Improve Neovim startup time.
vim.cmd("set pumblend=0") -- Transparency of floating windows.
vim.opt.fileencoding = "utf-8" -- Default encoding written to a file.
--vim.opt.iskeyword:append('-')                                -- Consider string-string as whole word.
vim.opt.title = true -- Show invisible characters like spaces/tabs.
vim.opt.list = true -- Show invisible characters like spaces/tabs.
vim.opt.confirm = true -- Ask for confirmation instead of error out if file gets closed.

------------------------------------------------------------
-- File Explorer

vim.cmd("let g:netrw_liststyle = 3") -- Use tree list style in netrw file explorer.

------------------------------------------------------------
-- Line Numbers

vim.opt.number = true -- Show line numbers.
vim.opt.relativenumber = true -- Show relative line numbers.

------------------------------------------------------------
-- Tabbing & Indentation

vim.opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
vim.opt.shiftwidth = 2 -- 2 spaces for indent width
vim.opt.ignorecase = true -- Ignore case in search patterns.
vim.opt.smartcase = true -- Is mixed case included in search, assume case-sensitivity.

vim.opt.wrap = false -- Disable line wrapping.

------------------------------------------------------------
-- Searches

vim.opt.ignorecase = true -- ignore case when searching
vim.opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-------------------------------------------------------------------------------
-- Scrolling

vim.opt.scrolloff = 3 -- Start vertical scrolling by number of visible lines.
vim.opt.sidescrolloff = 3 -- Start horizontal scrolling by number of visible lines.

vim.opt.winfixwidth = true -- Don't resize splits automatically.

vim.opt.cursorline = true -- Highlight the current line.

-- turn on termguicolors for tokyonight colorscheme to work
-- (have to use iterm2 or any other true color terminal)
vim.opt.termguicolors = true -- Expand the number of usable colors.

vim.opt.background = "dark" -- Colorschemes that can be light or dark will be made dark.
vim.opt.signcolumn = "yes" -- Always show the sign column, otherwise it would shift the text each time.

-- backspace
vim.opt.backspace = "indent,eol,start" -- Allow backspace on indent, end of line or insert mode start position.

-- clipboard
vim.opt.clipboard:append("unnamedplus") -- Use clipboard of OS as default register.

-- split windows
vim.opt.splitbelow = true -- Open new horizontal split always below the current.
vim.opt.splitright = true -- Open new vertical split always below the current.

-- turn off swapfile
vim.opt.swapfile = false
