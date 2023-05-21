-- ~/.config/nvim/lua/user/keymaps.lua

-------------------------------------------------------------------------------
-- Legend
-------------------------------------------------------------------------------

-- Mappings for plugins are in the plugin file itself and here.

--------------------------------------------------------------
-- Modes

--   normal_mode       = "n"
--   insert_mode       = "i",
--   visual_mode       = "v",
--   visual_block_mode = "x",
--   term_mode         = "t",
--   command_mode      = "c",



-------------------------------------------------------------------------------
-- Variables
-------------------------------------------------------------------------------

local opts      = { noremap = true, silent = true }
-- local term_opts = { silent = true }
local keymap    = vim.api.nvim_set_keymap



-------------------------------------------------------------------------------
-- Mappings
-------------------------------------------------------------------------------

-- Set <Leader> to space (standard is \):
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Clear search highlights ( nh):
keymap("n", "<Leader>nh", ":nohl<CR>", opts)

-- Delete single character without copying into register:
-- keymap("n", "x", "_x", opts) -> Does not work.

-- Redo last action:
keymap("n", "U", "<C-r>", opts)

-- Visual block mode:
keymap("n", "vb", "<C-v>", opts)

-- Append (join) next line with white space ( a):
keymap("n", "<Leader>a", "J", opts)

-- Put content always on the line below the cursor:
--keymap("n", "p", "pgvy:put<CR>j", opts)

-------------------------------------------------------------------------------
-- Splits (Buffers)
-------------------------------------------------------------------------------

-- Navigate buffers:
--keymap("n", "<S-l>", ":bnext<CR>", opts)
--keymap("n", "<S-h>", ":bprevious<CR>", opts)

--------------------------------------------------------------
-- Splitting

-- Split buffer vertically (y-axis) ( y):
keymap("n", "<Leader>y", ":vsplit<CR>", opts)

-- Split buffer horizontally (x-axis) ( x):
keymap("n", "<Leader>x", ":split<CR>", opts)


--------------------------------------------------------------
-- Navigation

-- Go to right split (L):
keymap("n", "L", "<C-w>l", opts)

-- Go to left split (H):
keymap("n", "H", "<C-w>h", opts)

-- Go to split below (J):
keymap("n", "J", "<C-w>j", opts)

-- Go to split above (K):
keymap("n", "K", "<C-w>k", opts)


--------------------------------------------------------------
-- Resizing

-- Equalize width and height for all splits ( es):
keymap("n", "<Leader>es", "<C-w>=", opts)

-- Grow split vertical ( gv):
keymap("n", "<Leader>gv", ":vertical resize +5<CR>", opts)

-- Shrink split vertical ( sv):
keymap("n", "<Leader>sv", ":vertical resize -5<CR>", opts)

-- Grow split horizontally ( gh):
keymap("n", "<Leader>gh", ":resize +5<CR>", opts)

-- Shrink split horizontally ( sh):
keymap("n", "<Leader>sh", ":resize -5<CR>", opts)



-------------------------------------------------------------------------------
-- Text edit
-------------------------------------------------------------------------------

-- Stay in indent mode after indent width <:
keymap("v", "<", "<gv", opts)

-- Stay in indent mode after indent width >:
keymap("v", ">", ">gv", opts)

-- Move marked line(s) down:
--keymap("x", "J", ":move '>+1<CR>gv-gv", opts)

-- Move marked line(s) up:
--keymap("x", "K", ":move '<-2<CR>gv-gv", opts)

-- Put in visual mode and enter normal mode:
keymap("v", "p", '"_dP', opts)




-------------------------------------------------------------------------------
-- Terminal
-------------------------------------------------------------------------------

-- Open terminal in horizontal buffer below ( tb):
keymap("n", "<Leader>tb", ":split term://zsh<CR>i", opts)

-- Open terminal in vertical buffer to the next ( tn):
keymap("n", "<Leader>tn", ":vsplit term://zsh<CR>i", opts)



-------------------------------------------------------------------------------
-- Tabs
-------------------------------------------------------------------------------

-- Open new tab ( ot):
keymap("n", "<Leader>ot", ":tabnew<CR>", opts)

-- Exit current tab: ( et):
keymap("n", "<Leader>et", ":tabclose<CR>", opts)

-- Go to next tab ( nt):
keymap("n", "<Leader>nt", ":tabn<CR>", opts)

-- Go to previous tab ( pt):
keymap("n", "<Leader>pt", ":tabp<CR>", opts)



-------------------------------------------------------------------------------
-- Nvim-Tree
-------------------------------------------------------------------------------

-- Toggle Nvim-Tree ( tt):
keymap("n", "<Leader>tt", ":NvimTreeToggle<CR>", opts)

-- Close tree: q

-- Explore tree ( ee):
keymap("n", "<Leader>ee", ":NvimTreeFocus<CR>", opts)

-- Show actual file in tree ( ft):
keymap("n", "<Leader>ft", ":NvimTreeFindFile<CR>", opts)

-- Close tree pop ups: esc

-- Navigate up: k

-- Navigate down: j

-- Open/Close: o

-- Refresh tree: R

-- Open file but stay in tree:
-- keymap('n', 'go', '<C-v><Leader>ft', opts) -> Not working!!!!

-- Delete: d

-- Move to trash: D

-- Rename file: r
-- Open new vertical split: s
-- Open new horizontal split: i
-- Yank file name: y
-- Yank relative path: Y
-- Cut: x
-- Collapse all: W
-- Expand all: E
-- Open file preview: <Tab>
-- New file: a



-------------------------------------------------------------------------------
-- Telescope
-------------------------------------------------------------------------------

--keymap("n", "<Leader>se", ":Telescope find_files<CR>", opts)

-------------------------------------------------------------------------------
-- Some Stuff
-------------------------------------------------------------------------------

-- Normal --
-- Better window navigation
-- keymap("n", "<C-h>", "<C-w>h", opts)
-- keymap("n", "<C-j>", "<C-w>j", opts)
-- keymap("n", "<C-k>", "<C-w>k", opts)
-- keymap("n", "<C-l>", "<C-w>l", opts)

-- Move text up and down
-- keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts) -> not working
-- keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts) -> not working

-- Insert --
-- Press jk fast to enter
-- keymap("i", "jk", "<ESC>", opts) -> no need for that

-- Move text up and down
-- keymap("v", "<A-j>", ":m .+1<CR>==", opts) -> not working
-- keymap("v", "<A-k>", ":m .-2<CR>==", opts) -> not working

-- Visual Block --
-- Move text up and down
-- keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts) -> not working
-- keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts) -> not working

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
