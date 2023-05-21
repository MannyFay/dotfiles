-- ~/.config/nvim/lua/user/plugins.lua

-- notes:
-- don't forget to put the plugins at the first place in init.lua, so options
-- and keymaps.lua have a higher priority.



------------------------------------------------------------------------------
-- Packer Plugin Manager
------------------------------------------------------------------------------

-- Automatically install Packer:
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({
      'git',
      'clone',
      '--depth',
      '1',
      'https://github.com/wbthomason/packer.nvim',
      install_path,
    })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

-- Set ensure function as variable:
local packer_bootstrap = ensure_packer()

-- Import Packer with a protected call, so it don't error out on first use:
local packer_status_ok, packer = pcall(require, 'packer')
if not packer_status_ok then
  return
end

-- Reset Packer before customization below:
packer.reset()

-- Have Packer use a popup window:
packer.init {
  compile_path = vim.fn.stdpath('data') .. 'site/plugin/packer_compiled.lua',
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'solid' })
    end,
  },
}

-- Autocommand that reloads neovim whenever you save the plugins.lua file:
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

------------------------------------------------------------------------------
-- Plugins
------------------------------------------------------------------------------

-- Set up variable for Packers use() function:
local use = packer.use


------------------------------------------------------------
-- Appearance

-- Have packer manage itself:
use('wbthomason/packer.nvim')



-- Easily comment stuff in and out:
use({
  'numToStr/Comment.nvim',
  config = function()
    require('user.plugins.comment')
  end
})

-- Surround a selection of chars:
-- CONFIGURE THIS IN FUTURE !!!
use({
  'kylechui/nvim-surround',
  -- Use * for stability. Omit to use `main` branch for the latest features:
  tag = '*',
  requires = {
    -- Advanced syntax highlighting:
    'nvim-treesitter/nvim-treesitter',
    -- Provide more text objects
    'nvim-treesitter/nvim-treesitter-textobjects',
  },
  config = function()
    require('user.plugins.nvim-surround')
  end
})

-- Provide Unix commands in Neovims command line:
-- CONFIGURE THIS IN FUTURE !!!
use({
  'chrisgrieser/nvim-genghis',
  requires = {
    -- Autocompletion for directories:
    'stevearc/dressing.nvim',
    'hrsh7th/nvim-cmp',
	'hrsh7th/cmp-omni',
  },
  config = function()
    require('user.plugins.nvim-genghis')
  end
})

-- Selection of keymappings to jump between buffers and Git conflicts:
-- CONFIGURE THIS IN FUTURE !!!
use({
  'tummetott/unimpaired.nvim',
  config = function()
    require('user.plugins.unimpaired')
  end
})

-- Guess and set indentation because of the rest of a file:
use({
  'nmac427/guess-indent.nvim',
  config = function()
    require('user.plugins.guess-indent')
  end
})

-- Dot repeating for plugins can maybe solved about that article:
-- https://gist.github.com/kylechui/a5c1258cd2d86755f97b10fc921315c3

-- Boost up language packs for Neovim:
-- CONFIGURE THIS IN FUTURE !!!
use('sheerun/vim-polyglot')

-- Jump to the last place of editing if you open a file:
use({
  'ethanholz/nvim-lastplace',
  config = function()
    require('user.plugins.nvim-lastplace')
  end
})

-- Mark more than one word and search for it with *:
use('nelstrom/vim-visual-star-search')

-- Create parent directories if file is created in a not existing directory:
use('jessarcher/vim-heritage')

-- Extra text objects for HTML attributes:
use({
  'whatyouhide/vim-textobj-xmlattr',
  requires = {
    'kana/vim-textobj-user'
  },
})

-- Automatically set the working directory to the project root:
-- CONFIGURE KEYMAPPINGS !!!
-- Maybe it automatically set's the root to vendor if opened! Watch it!
use({
  'ahmedkhalf/project.nvim',
  requires = {
    'nvim-telescope/telescope.nvim',
  },
  config = function()
    require('user.plugins.project')
  end
})

-- Autopairs, integrates with both cmp and treesitter:
-- CONFIGURE THIS MORE IN FUTURE !!!
use({
  'windwp/nvim-autopairs',
  config = function()
    require('user.plugins.autopairs')
  end
})

-- Enable smooth scrolling to avoid hard jumps:
-- CONFIGURE THIS IN FUTURE !!!
use({
  'karb94/neoscroll.nvim',
  config = function()
    require('user.plugins.neoscroll')
  end
})

-- Watch it's progress. It's not really functional at this time!
-- Split or join list-like syntax constructs (like arrays):
-- CONFIGURE THIS IN FUTURE !!!
--[[ use({ ]]
--[[   'bennypowers/splitjoin.nvim', ]]
--[[   config = function() ]]
--[[     require('user.plugins.splitjoin') ]]
--[[   end ]]
--[[ }) ]]
use({
  'AndrewRadev/splitjoin.vim',
  config = function()
    -- Set brackets on new line if splitting HTML attributes:
    vim.g.splitjoin_html_attributes_bracket_on_new_line = 1
    vim.g.splitjoin_trailing_comma = 1
    vim.g.splitjoin_php__method_chain_full = 1
  end,
})

-- Automatically fix indentation when pasting code:
use({
  'sickill/vim-pasta',
  config = function()
    vim.g.pasta_disabled_filetype = { 'fugitive' }
  end,
})

-- Set colorscheme:
use({
  'MannyFay/mannydark.nvim',
  --[[ config = function() ]]
  --[[   require('user.plugins.colorscheme') ]]
  --[[ end ]]
  vim.cmd [[
    try
      colorscheme mannydark
    catch /^Vim\%((\a\+)\)\=:E185/
      colorscheme default
      set background=dark
    endtry
  ]]
})

-- Fuzzy Finder:
-- Install: https://github.com/BurntSushi/ripgrep
use({
  'nvim-telescope/telescope.nvim',
  requires = {
    -- Useful lua functions used by lots of plugins:
    'nvim-lua/plenary.nvim',
    -- Dev-incons set:
    'kyazdani42/nvim-web-devicons',
    -- Passing arguments to the grep command:
    'nvim-telescope/telescope-live-grep-args.nvim',
    -- Increase sorting performance of Telescope:
    { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
    -- Telescope image preview:
    'nvim-telescope/telescope-media-files.nvim',
  },
  config = function()
    require('user.plugins.telescope')
  end
})




  -- Useful lua functions used by lots of plugins:
  -- https://github.com/nvim-lua/plenary.nvim
  --use "nvim-lua/plenary.nvim"

  -- An implementation of the Popup API from vim in Neovim:
  -- https://github.com/nvim-lua/popup.nvim
  use "nvim-lua/popup.nvim"

  -- Telescope fuzzy finder:
  -- https://github.com/nvim-telescope/telescope.nvim
  --use "nvim-telescope/telescope.nvim"
    -- Install: https://github.com/BurntSushi/ripgrep

  -- Increase sorting performance of Telescope:
  -- https://github.com/nvim-telescope/telescope-fzf-native.nvim
  --[[ use { ]]
  --[[   'nvim-telescope/telescope-fzf-native.nvim', ]]
  --[[   run = 'make' ]]
  --[[ } ]]

  -- Telescope image preview:
  -- https://github.com/nvim-telescope/telescope-media-files.nvim
  --use "nvim-telescope/telescope-media-files.nvim"




  use "andymass/vim-matchup"

  -- Dev-incons set:
  -- https://github.com/nvim-tree/nvim-web-devicons
  --use "kyazdani42/nvim-web-devicons"

  -- Project tree:
  -- https://github.com/nvim-tree/nvim-tree.lua
  use "nvim-tree/nvim-tree.lua"


  -- Status bar:
  -- https://github.com/nvim-lualine/lualine.nvim
  use "nvim-lualine/lualine.nvim"

  -- Toggle multiple terminals during an editing session:
  -- https://github.com/akinsho/toggleterm.nvim
  --use "akinsho/toggleterm.nvim"

  -- Autosave files:
  -- https://github.com/Pocco81/auto-save.nvim
  use "pocco81/auto-save.nvim"


  -- Speed up loading Lua modules:
  -- https://github.com/lewis6991/impatient.nvim
  use "lewis6991/impatient.nvim"

  -- Show vertical indent lines for blocks:
  -- https://github.com/lukas-reineke/indent-blankline.nvim
  --use "lukas-reineke/indent-blankline.nvim"

  -- Displays a popup with possible key bindings:
  -- https://github.com/folke/which-key.nvim
  --use "folke/which-key.nvim"

  -- Min-/Maximize buffer:
  use { "anuvyklack/windows.nvim",
   requires = "anuvyklack/middleclass",
   config = function()
      require('windows').setup()
   end
  }

  use {
  "gbprod/phpactor.nvim",
  --run = require("phpactor.handler.update"), -- To install/update phpactor when installing this plugin
  requires = {
    "nvim-lua/plenary.nvim", -- required to update phpactor
    "neovim/nvim-lspconfig" -- required to automaticly register lsp serveur
  },
}


  -- Easy motion:
  -- https://github.com/phaazon/hop.nvim
  use {
  'phaazon/hop.nvim',
  branch = 'v2', -- optional but strongly recommended
  config = function()
    -- you can configure Hop the way you like here; see :h hop-config
    require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
  end
  }

  ------------------------------------------------------------
  -- Color



  -- Treesitter syntax highlighting:
  -- https://github.com/nvim-treesitter/nvim-treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }

  -- Check cursor location via Treesitter queries automatically:
  -- https://github.com/JoosepAlviste/nvim-ts-context-commentstring
  use "JoosepAlviste/nvim-ts-context-commentstring"

  -- Show colorized background on color values:
  -- https://github.com/norcalli/nvim-colorizer.lua
  use {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require("colorizer").setup()
    end,
  }

  ------------------------------------------------------------
  -- Auto-completion (CMP)

  -- The Nvim completion plugin itself:
  -- https://github.com/hrsh7th/nvim-cmp
  use "hrsh7th/nvim-cmp"

  -- Buffer analysis for completion:
  -- https://github.com/hrsh7th/cmp-buffer
  use "hrsh7th/cmp-buffer"

  -- File path completion:
  -- https://github.com/hrsh7th/cmp-path
  use "hrsh7th/cmp-path"

  -- Command line completions:
  -- https://github.com/hrsh7th/cmp-cmdline
  use "hrsh7th/cmp-cmdline"



  ------------------------------------------------------------
  -- Snippets

  -- Snippet Engine:
  -- https://github.com/L3MON4D3/LuaSnip
  use "L3MON4D3/LuaSnip"

  -- Luasnip completion source for nvim-cmp:
  -- https://github.com/saadparwaiz1/cmp_luasnip
  use "saadparwaiz1/cmp_luasnip"

  -- Snippet collection:
  -- https://github.com/rafamadriz/friendly-snippets
  use "rafamadriz/friendly-snippets"


  ------------------------------------------------------------
  -- Language Server Protocol (LSP)

  -- Simple to use language server installer:
  -- https://github.com/williamboman/mason.nvimuse
  use "williamboman/mason.nvim"

  -- Close some gaps that exist between mason.nvim and lspconfig:
  -- https://github.com/williamboman/mason-lspconfig.nvim
  use "williamboman/mason-lspconfig.nvim"

  -- Enable LSP:
  -- https://github.com/neovim/nvim-lspconfig
  use "neovim/nvim-lspconfig"

  -- Nvim-completion source for Neovim's built-in language server client:
  -- https://github.com/hrsh7th/cmp-nvim-lsp
  use "hrsh7th/cmp-nvim-lsp"
    -- Responsible for auto-completion results.

  use {"glepnir/lspsaga.nvim", branch = 'main'}
  use "jose-elias-alvarez/typescript.nvim"
  use "onsails/lspkind.nvim"

  -- Markdown Preview:
  -- https://github.com/iamcco/markdown-preview.nvim
  use({
        "iamcco/markdown-preview.nvim",
        run = "cd app && npm install",
        setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" },
  })



  -- Debugging, Breakpoints and inspection:
  -- https://github.com/mfussenegger/nvim-dap
  --use "mfussenegger/nvim-dap"

  -- Inject LSP diagnostics, code actions, and more via Lua:
  -- https://github.com/jose-elias-alvarez/null-ls.nvim
  --[[ use "jose-elias-alvarez/null-ls.nvim" ]]

  -- Close gaps between mason and null-ls:
  -- https://github.com/jay-babu/mason-null-ls.nvim
  --[[ use "jay-babu/mason-null-ls.nvim" ]]

  -- A plugin to configure Neovim LSP using json/yaml files like:
  -- https://github.com/tamago324/nlsp-settings.nvim
  --[[ use "tamago324/nlsp-settings.nvim" ]]


  ------------------------------------------------------------
  -- Git

  -- Git integration for buffers:
  -- https://github.com/lewis6991/gitsigns.nvim
  use "lewis6991/gitsigns.nvim"


  if packer_bootstrap then
    packer.sync()
  end



------------------------------------------------------------------------------
-- Auto Commands
------------------------------------------------------------------------------


