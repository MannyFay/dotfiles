-- ~/.config/nvim/lua/user/options.lua

------------------------------------------------------------------------------
-- Variables & Objects
------------------------------------------------------------------------------

local options = {
    -- Create backup files:
    backup = false,
    -- Use clipboard of OS:
    clipboard = "unnamedplus",
    -- Command line height:
    cmdheight = 1,
    -- Modify auto-complete behaviour more like an IDE:
    completeopt = { "menuone", "noselect" },
    -- Make `` visible in Markdown files:
    conceallevel = 0,
    -- Encoding written to a file:
    fileencoding = "utf-8",
    -- Highlight all matches on previous search pattern:
    hlsearch = true,
    -- Ignore case in search patterns
    ignorecase = true,
    -- Allow using the mouse:
    mouse = "a",
    -- Pop up menu height:
    pumheight = 10,
    -- Don't show Vim modes (not working?!):
    showmode = false,
    -- Disable tab bar:
    showtabline = 1,
    -- Is mixed case included in search, assume case-sensitivity:
    smartcase = true,
    -- Keep indentation in new line:
    smartindent = true,
    -- Open new horizontal split always below the current:
    splitbelow = true,
    -- Open new vertical split always below the current:
    splitright = true,
    -- Don't create swapfiles:
    swapfile = false,
    -- Expand the number of usable colors:
    termguicolors = true,
    -- Time in milliseconds to accept commands (default: 1000):
    timeoutlen = 1000,
    -- Enable persistent undo:
    undofile = true,
    -- Faster code completion (4000ms default):
    updatetime = 250,
    -- If a file is being edited by another program, it is not allowed to be edited:
    writebackup = false,
    -- Convert tabs to spaces:
    expandtab = true,
    -- Max spaces for for level of indentation:
    shiftwidth = 4,
    -- Spaces for indentation:
    tabstop = 4,
    -- Highlight the current line:
    cursorline = true,
    -- Show line numbers:
    number = true,
    -- Show relative line numbers:
    relativenumber = false,
    -- Set width of number column:
    numberwidth = 4,
    -- Always show the sign column, otherwise it would shift the text each time:
    signcolumn = "yes",
    -- Enable soft wrapping:
    wrap = true,
    -- Disable hard wrapping:
    textwidth = 0,
    -- Don't break line in a word ('list' setting must be disabled):
    linebreak = true,
    -- Don't show invisible charakters like spaces/tabs:
    list = false,
    -- Start scrolling by number of visible lines:
    scrolloff = 3,
    sidescrolloff = 3,
    -- Show title of file in window:
    title = true,
    -- Show replacements in split, before applying to file:
    inccommand = "split",
    -- Apply the color set to dark screens:
    background = "dark",
    -- Don't hide unused buffers:
    hidden = false,
    -- Auto write buffer if focus changes:
    autowrite = true,
    -- Auto write all buffers if focus changes:
    autowriteall = true,
    -- Allow backspace on indent, end of line or insert mode start position:
    backspace = "indent,eol,start",
    -- Show visual guide line:
    colorcolumn = "80",
    -- Don't show auto complete messages in command line:
    --shortmess:append "c",
    -- Number of safed undo steps:
    undolevels = 1000,
    -- Turn off all error bells:
    errorbells = false,
    --belloff = true,
    -- Don't display mode in statusbar:
}

-- Iterate trough options object and shift vim.opt to every command:
for k, v in pairs(options) do
  vim.opt[k] = v
end

-- Allow wrapping on this signs too:
vim.cmd "set whichwrap+=<,>,[,],h,l"

-- Consider - as part of a keyword like in HTML/CSS:
-- vim.cmd [[set iskeyword+=-]]

-- Insert current comment leader in new line:
vim.cmd [[set formatoptions-=r]]

-- Consider string-string as whole word:
vim.opt.iskeyword:append("-")

-- Disable overwriting from Vi to Vim (needet by vim-polyglot plugin):
vim.o.compatible = false


