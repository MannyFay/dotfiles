-------------------------------------------------------------------------------
-- LSP Config Plugin
-- https://github.com/neovim/nvim-lspconfig
-------------------------------------------------------------------------------

-- Import Mason plugin safely:
local mason_status_ok, mason = pcall(require, 'mason')
if not mason_status_ok then
  return "Error: */lua/user/plugin_options/lspconfig.lua -> Mason plugin could not be loaded. Sure you have installed it in your plugins file?"
end

-- Import Mason-LSP-Config plugin safely:
local mason_lspconfig_status_ok, mason_lspconfig = pcall(require, 'mason-lspconfig')
if not mason_lspconfig_status_ok then
  return "Error: */lua/user/plugin_options/lspconfig.lua -> Mason-LSP-Config plugin could not be loaded. Sure you have installed it in your plugins file?"
end

-- -- Import Mason Tool Installer plugin safely:
-- local mason_tool_installer_status_ok, mason_tool_installer = pcall(require, 'mason-tool-installer')
-- if not mason_tool_installer_status_ok then
--   return "Error: */lua/user/plugin_options/lspconfig.lua -> Mason-LSP-Config plugin could not be loaded. Sure you have installed it in your plugins file?"
-- end

-- Import LSP Config plugin safely:
local lspconfig_status_ok, lspconfig = pcall(require, 'lspconfig')
if not lspconfig_status_ok then
  return "Error: */lua/user/plugin_options/lspconfig.lua -> LSP-Config plugin could not be loaded. Sure you have installed it in your plugins file?"
end


------------------------------------------------------------
-- Mason Plugin
-- https://github.com/williamboman/mason.nvim

mason.setup({
  ui = {
    check_outdated_packages_on_open = true,    -- Check for new versions when opening Mason.
    border                          = 'none',  -- Border style of the Mason floating window.
    width                           = 0.8,     -- Width in % of the Mason floating window.
    height                          = 0.9,     -- Height in % of the Mason floating window.
    icons = {
      package_installed   = '✓',               -- Icon for installed packages.
      package_pending     = '➜',               -- Icon for pending packages.
      package_uninstalled = '✗',               -- Icon for uninstalled packages.
    },
  },
})


------------------------------------------------------------
-- Mason LSP-Config Plugin
-- https://github.com/williamboman/mason-lspconfig.nvim

-- Install with MasonInstall command:
-- 'blade-formatter',                 -- Laravel Blade formatter.
--  'phpcs',                           -- PHP CodeSniffer.
--  'php-cs-fixer',

mason_lspconfig.setup({
  automatic_installation = true,       -- All servers set up via LSP-Config will be installed automatically.
  ensure_installed = {
    'angularls',                       -- Angular language server.
    'ansiblels',                       -- Ansible language server.
    'arduino_language_server',         -- Arduino language server.
    'azure_pipelines_ls',              -- Azure Pipelines language server.
    'bashls',                          -- Bash language server.
    'clangd',                          -- C, C++, Objective-C language server.
    'cmake',                           -- CMake language server.
    --'csharp_ls',                       -- C# language server.
    'cssls',                           -- CSS language server.
    'cucumber_language_server',        -- Cucumber language server.
    'denols',                          -- Deno language server.
    'diagnosticls',                    -- Diagnostic Node.js and Composer server.
    'docker_compose_language_service', -- Docker Compose Language Server.
    'dockerls',                        -- Docker language server.
    'emmet_ls',                        -- Emmet HTML completion server.  -- emmet-language-server
    'gradle_ls',                       -- Gradle language server.
    'grammarly',                       -- Grammarly spell checker server.
    'graphql',                         -- GraphQL language server.
    --'hls',                             -- Haskell language server.
    'html',                            -- HTML language server.
    --'htmx',                            -- HTMX language server.
    'intelephense',                    -- PHP language server.
    'jdtls',                           -- Java language server.
    'jsonls',                          -- JSON language server.
    'kotlin_language_server',          -- Kotlin language server.
    'lemminx',                         -- XML language server.
    'ltex',                            -- LaTeX language server.
    'lua_ls',                          -- Lua language server.
    --'autotools_ls',                    -- Make language server.
    'marksman',                        -- Markdown language server.
    'matlab_ls',                       -- MATLAB language server.
    --'pest_ls',                         -- Pest PHP testing framework language server.
    'powershell_es',                   -- PowerShell language server.
    'prismals',                        -- Prisma language server.
    'pyright',                         -- Python language server.
    --'r_language_server',               -- R language server.
    --'ruby_ls',                         -- Ruby language server.
    'rust_analyzer',                   -- Rust language server.
    --'salt_ls',                         -- SaltStack language server.
    'spectral',                        -- Spectral OpenAPI linter.
    'sqlls',                           -- SQL language server.
    'svelte',                          -- Svelte language server.
    'tailwindcss',                     -- Tailwind CSS language server.
    'taplo',                           -- TOML language server.
    'terraformls',                     -- Terraform language server.
    'tsserver',                        -- JavaScript/TypeScript language server.
    'volar',                           -- Vue language server.
    'yamlls',                          -- YAML language server.
    --'editorconfig-checker',            -- EditorConfig checker.
    --'nginx_language_server',           -- NGINX language server.
    'vimls',                           -- Vim language server.
    -- 'twigcs',                          -- Twig language server.
    -- 'pint',
    -- 'php-debug-adapter',
    -- 'phpstan',                         -- PHPStan language server.
  },
})

-- mason_tool_installer.setup({
--   ensure_installed = {
--     'blade-formatter',                 -- Laravel Blade formatter.
--     'phpcs',                           -- PHP CodeSniffer.
--     'php-cs-fixer',
--     'prettier',
--     'stylua',
--     'eslint',
--   },
-- })



------------------------------------------------------------
-- Appearance

-- Change the Diagnostic symbols in the sign column (gutter):
local diagnosticIcons = {
  Error = ' ',
  Warn  = ' ',
  Hint  = ' ',
  Info  = ' ',
}

for type, icon in pairs(diagnosticIcons) do
  local hl = 'DiagnosticSign' .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = '' })
end

-- Combine additional default capabilities of Nvim-CMP with the LSP capabilities to work smoothly in autocomplete:
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())



-------------------------------------------------------------------------------
-- Key Mappings
-------------------------------------------------------------------------------

-- Provide key mappings for LSP and enhance autocompletion:
local on_attach = function(_, bufnr)
  vim.bo[bufnr].omnifunc = 'v:lua.vim.lsp.omnifunc'
  -- vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)  -- Go to definition (gd).
  -- vim.keymap.set('n', 'si', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)       -- Show information in floating window (si):
  -- keymap.set("n", "gf", "<cmd>Lspsaga lsp_finder<CR>", opts) -- show definition, references
  -- keymap.set("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>", opts) -- got to declaration
  -- keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts) -- see definition and make edits in window
  -- keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts) -- go to implementation
  -- keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts) -- see available code actions
  -- keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts) -- smart rename
  -- keymap.set("n", "<leader>d", "<cmd>Lspsaga show_line_diagnostics<CR>", opts) -- show  diagnostics for line
  -- keymap.set("n", "<leader>d", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts) -- show diagnostics for cursor
  -- keymap.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts) -- jump to previous diagnostic in buffer
  -- keymap.set("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts) -- jump to next diagnostic in buffer
  -- keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts) -- show documentation for what is under cursor
  -- keymap.set("n", "<leader>o", "<cmd>LSoutlineToggle<CR>", opts) -- see outline on right hand side

  -- TypeScript specific key mappings (e.g. rename file and update imports)
  --if client.name == "tsserver" then
  --  keymap.set("n", "<leader>rf", ":TypescriptRenameFile<CR>") -- rename file and update imports
  --  keymap.set("n", "<leader>oi", ":TypescriptOrganizeImports<CR>") -- organize imports (not in youtube nvim video)
  --  keymap.set("n", "<leader>ru", ":TypescriptRemoveUnused<CR>") -- remove unused variables (not in youtube nvim video)
  --end
end



-------------------------------------------------------------------------------
-- Language Servers
-------------------------------------------------------------------------------


-------------------------------------------------------------------------------
-- Angular Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#angularls

lspconfig['angularls'].setup({
  capabilities = capabilities,
  on_attach    = on_attach,
})



-------------------------------------------------------------------------------
-- Ansible Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#ansiblels

lspconfig['ansiblels'].setup({
  capabilities = capabilities,
  on_attach    = on_attach,
})



-------------------------------------------------------------------------------
-- Arduino Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#arduino_language_server

lspconfig['arduino_language_server'].setup({
  capabilities = capabilities,
  on_attach    = on_attach,
})



-------------------------------------------------------------------------------
-- Azure Pipelines Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#azure_pipelines_ls

lspconfig['azure_pipelines_ls'].setup({
  capabilities = capabilities,
  on_attach    = on_attach,
})



-------------------------------------------------------------------------------
-- Bash Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#bashls

lspconfig['bashls'].setup({
  capabilities = capabilities,
  on_attach    = on_attach,
})



-------------------------------------------------------------------------------
-- C, C++, Objective-C Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#clangd

lspconfig['clangd'].setup({
  capabilities = capabilities,
  on_attach    = on_attach,
})



-------------------------------------------------------------------------------
-- CMake Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#cmake

lspconfig['cmake'].setup({
  capabilities = capabilities,
  on_attach    = on_attach,
})



-------------------------------------------------------------------------------
-- C# Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#csharp_ls

-- lspconfig.csharp_ls.setup({
--   on_attach    = on_attach,
--   capabilities = capabilities,
-- })



-------------------------------------------------------------------------------
-- CSS Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#cssls

lspconfig['cssls'].setup({
  capabilities = capabilities,
  on_attach    = on_attach,
})



-------------------------------------------------------------------------------
-- Cucumber Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#cucumber_language_server

lspconfig['cucumber_language_server'].setup({
  capabilities = capabilities,
  on_attach    = on_attach,
})



------------------------------------------------------------
-- Dart Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#dartls

-- lspconfig.dartls.setup({
--   on_attach    = on_attach,
--   capabilities = capabilities,
-- })



-------------------------------------------------------------------------------
-- Deno Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#denols

lspconfig['denols'].setup({
  capabilities = capabilities,
  on_attach    = on_attach,
})



-------------------------------------------------------------------------------
-- Diagnostics Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#diagnosticls

lspconfig['diagnosticls'].setup({
  capabilities = capabilities,
  on_attach    = on_attach,
})



-------------------------------------------------------------------------------
-- Docker Compose Language Service
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#docker_compose_language_service

lspconfig['docker_compose_language_service'].setup({
  on_attach    = on_attach,
  capabilities = capabilities,
})



-------------------------------------------------------------------------------
-- Docker Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#dockerls

lspconfig['dockerls'].setup({
  capabilities = capabilities,
  on_attach    = on_attach,
})



-------------------------------------------------------------------------------
-- Ember.JS Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#ember

lspconfig['ember'].setup({
  capabilities = capabilities,
  on_attach    = on_attach,
})



-------------------------------------------------------------------------------
-- Emmet Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#emmet_ls

lspconfig['emmet_ls'].setup({
  capabilities = capabilities,
  on_attach    = on_attach,
  filetypes = { 'html', 'typescriptreact', 'javascriptreact', 'css', 'sass', 'scss', 'less', 'svelte' },
})



-------------------------------------------------------------------------------
-- Gradle Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#gradle_ls

lspconfig['gradle_ls'].setup({
  capabilities = capabilities,
  on_attach    = on_attach,
})



-------------------------------------------------------------------------------
-- Grammarly Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#grammarly

lspconfig['grammarly'].setup({
  capabilities = capabilities,
  on_attach    = on_attach,
})



-------------------------------------------------------------------------------
-- GraphQL Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#graphql

lspconfig['graphql'].setup({
  capabilities = capabilities,
  on_attach    = on_attach,
  filetypes    = { 'graphql', 'gql', 'svelte', 'typescriptreact', 'javascriptreact' },
})



------------------------------------------------------------
-- Haskell Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#hls

-- lspconfig.hls.setup({
--   on_attach    = on_attach,
--   capabilities = capabilities,
-- })



-------------------------------------------------------------------------------
-- HTML Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#html

lspconfig['html'].setup({
  capabilities = capabilities,
  on_attach    = on_attach,
})



-------------------------------------------------------------------------------
-- HTMX Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#htmx

lspconfig['htmx'].setup({
  capabilities = capabilities,
  on_attach    = on_attach,
})



-------------------------------------------------------------------------------
-- PHP Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#intelephense

lspconfig['intelephense'].setup({
  on_attach = function(client, bufnr)
    on_attach(client, bufnr)
    client.server_capabilities.documentFormattingProvider      = false
    client.server_capabilities.documentRangeFormattingProvider = false
  end,
  capabilities = capabilities,
  filetypes    = { 'php', 'blade' },
  settings = {
    intelephense = {
      filetypes = { 'php', 'blade' },
      files = {
        associations = { '*php', '*.blade.php' },
        maxSize = 5000000,
      }
    }
  }
})



-------------------------------------------------------------------------------
-- Java Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#jdtls

lspconfig['jdtls'].setup({
  capabilities = capabilities,
  on_attach    = on_attach,
})



-------------------------------------------------------------------------------
-- JSON Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#jsonls

lspconfig['jsonls'].setup({
  capabilities = capabilities,
  on_attach    = on_attach,
})



-------------------------------------------------------------------------------
-- Kotlin Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#kotlin_language_server

lspconfig['kotlin_language_server'].setup({
  capabilities = capabilities,
  on_attach    = on_attach,
})



-------------------------------------------------------------------------------
-- XML Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#lemminx

lspconfig['lemminx'].setup({
  capabilities = capabilities,
  on_attach    = on_attach,
})



-------------------------------------------------------------------------------
-- LaTeX Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#ltex

lspconfig['ltex'].setup({
  capabilities = capabilities,
  on_attach    = on_attach,
})



-------------------------------------------------------------------------------
-- Lua Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#lua_ls

lspconfig['lua_ls'].setup({
  capabilities = capabilities,
  on_attach    = on_attach,
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',                                 -- Version of Lua you're using (most likely LuaJIT in the case of Neovim).
      },
      diagnostics = {
        globals = {'vim'},                                  -- Get the language server to recognize the 'vim' global.
      },
      workspace = {
        -- Make the server aware of Neovim runtime files.
        library = {
          [vim.fn.expand('$VIMRUNTIME/lua')]   = true,
          [vim.fn.stdpath('config') .. '/lua'] = true,
        },
      },
      telemetry = {
        enable = false,                                     -- Do not send telemetry data containing a randomized but unique identifier.
      },
    },
  },
})



------------------------------------------------------------
-- Autotools Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#autotools_ls

-- lspconfig.autotools_ls.setup({
--   on_attach    = on_attach,
--   capabilities = capabilities,
-- })



-------------------------------------------------------------------------------
-- Markdown Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#marksman

lspconfig['marksman'].setup({
  capabilities = capabilities,
  on_attach    = on_attach,
  filetypes    = { 'markdown', 'pandoc.markdown', 'md', 'markdown.mdx' },
})



-------------------------------------------------------------------------------
-- MATLAB Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#matlab_ls

lspconfig['matlab_ls'].setup({
  capabilities = capabilities,
  on_attach    = on_attach,
  filetypes    = { 'matlab' },
})



------------------------------------------------------------
-- NGINX Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#nginx_language_server

-- lspconfig.nginx_language_server.setup({
--   on_attach    = on_attach,
--   capabilities = capabilities,
--   filetypes    = { 'nginx' },
-- })



------------------------------------------------------------
-- Pest PHP Testing Framework Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#pest_ls

-- lspconfig.pest_ls.setup({
--   on_attach    = on_attach,
--   capabilities = capabilities,
--   filetypes    = { 'pest' },
-- })


------------------------------------------------------------
-- PostgreSQL Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#postgres_lsp

-- lspconfig.postgres_lsp.setup({
--   on_attach    = on_attach,
--   capabilities = capabilities,
--   filetypes    = { 'sql' },
-- })



-------------------------------------------------------------------------------
-- PowerShell Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#powershell_es

lspconfig['powershell_es'].setup({
  capabilities = capabilities,
  on_attach    = on_attach,
  filetypes    = { 'ps1', 'psm1', 'psd1' },
})



-------------------------------------------------------------------------------
-- Prisma ORM Language Server
--

lspconfig['prismals'].setup({
  on_attach    = on_attach,
  capabilities = capabilities,
})



-------------------------------------------------------------------------------
-- Python Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#pyright

lspconfig['pyright'].setup({
  capabilities = capabilities,
  on_attach    = on_attach,
  filetypes    = { 'python' },
})



-------------------------------------------------------------------------------
-- R Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#r_language_server

-- lspconfig.r_language_server.setup({
--   on_attach    = on_attach,
--   capabilities = capabilities,
--   filetypes    = { 'r', 'rmd' },
-- })


------------------------------------------------------------
-- Ruby Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#ruby_ls

-- lspconfig.ruby_ls.setup({
--   on_attach    = on_attach,
--   capabilities = capabilities,
--   filetypes    = { 'ruby' },
-- })



-------------------------------------------------------------------------------
-- Rust Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#rust_analyzer

lspconfig['rust_analyzer'].setup({
  capabilities = capabilities,
  on_attach    = on_attach,
  filetypes    = { 'rust' },
})



------------------------------------------------------------
-- SaltStack Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#salt_ls

-- lspconfig.salt_ls.setup({
--   on_attach    = on_attach,
--   capabilities = capabilities,
--   filetypes    = { 'sls' },
-- })



-------------------------------------------------------------------------------
-- Spectral OpenAPI Linter
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#spectral

lspconfig['spectral'].setup({
  capabilities = capabilities,
  on_attach    = on_attach,
  filetypes    = { 'yaml', 'json', 'yml' },
})



-------------------------------------------------------------------------------
-- SQL Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#sqlls

lspconfig['sqlls'].setup({
  capabilities = capabilities,
  on_attach    = on_attach,
  filetypes    = { 'sql', 'mysql' },
 })



-------------------------------------------------------------------------------
-- Svelte Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#svelte

lspconfig['svelte'].setup({
  capabilities = capabilities,
  on_attach = function(client, bufnr)
    on_attach(client, bufnr)
    vim.api.nvim_create_autocmd("BufWritePost", {
      pattern = { "*.js", "*.ts" },
      callback = function(ctx)
        if client.name == "svelte" then
          client.notify("$/onDidChangeTsOrJsFile", { uri = ctx.file })
        end
      end,
    })
  end,
  filetypes    = { 'svelte' },
})



-------------------------------------------------------------------------------
-- Tailwind CSS Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#tailwindcss

lspconfig['tailwindcss'].setup({
  capabilities = capabilities,
  on_attach    = on_attach,
  filetypes    = { 'aspnetcorerazor', 'astro', 'astro-markdown', 'blade', 'clojure', 'django-html', 'htmldjango', 'edge', 'eelixir', 'elixir', 'ejs', 'erb', 'eruby', 'gohtml', 'gohtmltmpl', 'haml', 'handlebars', 'hbs', 'html', 'html-eex', 'heex', 'jade', 'leaf', 'liquid', 'markdown', 'mdx', 'mustache', 'njk', 'nunjucks', 'php', 'razor', 'slim', 'twig', 'css', 'less', 'postcss', 'sass', 'scss', 'stylus', 'sugarss', 'javascript', 'javascriptreact', 'reason', 'rescript', 'typescript', 'typescriptreact', 'vue', 'svelte' }
})



-------------------------------------------------------------------------------
-- TOML Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#taplo

lspconfig['taplo'].setup({
  capabilities = capabilities,
  on_attach    = on_attach,
  filetypes    = { 'toml' },
  --root_pattern('*.toml', '.git'),
})



-------------------------------------------------------------------------------
-- Terraform Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#terraformls

lspconfig['terraformls'].setup({
  capabilities = capabilities,
  on_attach    = on_attach,
  filetypes    = { 'terraform', 'tf', 'terraform-vars' },
})



-------------------------------------------------------------------------------
-- TypeScript, JavaScript Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#tsserver

lspconfig['tsserver'].setup({
  capabilities = capabilities,
  on_attach    = on_attach,
  filetypes    = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json' },
})



-------------------------------------------------------------------------------
-- Vue Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#volar

lspconfig['volar'].setup({
  capabilities = capabilities,
  on_attach    = on_attach,
  filetypes    = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json' }
})



-------------------------------------------------------------------------------
-- YAML Language Server
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#yamlls

lspconfig['yamlls'].setup({
  capabilities = capabilities,
  on_attach    = on_attach,
  filetypes    = { 'yaml', 'yml', 'yaml.docker-compose' },
})



------------------------------------------------------------
-- Laravel Blade Language Server
-- https://github.com/shufo/blade-formatter

-- lspconfig['blade-formatter'].setup({
--   on_attach    = on_attach,
--   capabilities = capabilities,
--   filetypes    = { 'blade.php' },
-- })


------------------------------------------------------------
-- EditorConfig Checker
-- https://github.com/editorconfig-checker/editorconfig-checker

-- lspconfig.editorconfig.setup({
--   on_attach    = on_attach,
--   capabilities = capabilities,
--   filetypes    = { 'editorconfig' },
-- })


------------------------------------------------------------
-- Nginx Language Server
-- https://github.com/yaegassy/coc-nginx

-- lspconfig.nginx_language_server.setup({
--   on_attach    = on_attach,
--   capabilities = capabilities,
--   filetypes    = { 'nginx' },
-- })



-------------------------------------------------------------------------------
-- PHPCS Language Server

-- lspconfig['phpcs'].setup({
--   capabilities = capabilities,
--   on_attach    = on_attach,
--   filetypes    = { 'php' },
-- })

-- lspconfig['php-cs-fixer'].setup({
--   capabilities = capabilities,
--   on_attach    = on_attach,
--   filetypes    = { 'php' },
-- })

-- lspconfig.phpstan.setup({
--   on_attach    = on_attach,
--   capabilities = capabilities,
--   filetypes    = { 'php' },
-- })

-- local lsp = require 'lspconfig'

-- vim.tbl_deep_extend('keep', lsp, {
-- 	lsp_name = {
-- 		cmd = { 'command' },
-- 		filetypes = 'filetype',
-- 		name = 'lsp_name',
-- 	}
-- })


------------------------------------------------------------
-- PHPStan Language Server
-- https://github.com/phpactor/language-server-phpstan-extension

-- lspconfig.phpstan.setup({
--   on_attach    = on_attach,
--   capabilities = capabilities,
--   filetypes    = { 'php' },
-- })


------------------------------------------------------------
-- Twig Language Server
-- https://github.com/friendsoftwig/twigcs

-- lspconfig.twigcs.setup({
--   on_attach    = on_attach,
--   capabilities = capabilities,
--   filetypes    = { 'twig' },
-- })


-------------------------------------------------------------------------------
-- Vim Language Server
-- https://github.com/iamcco/vim-language-server

lspconfig['vimls'].setup({
  capabilities = capabilities,
  on_attach    = on_attach,
  filetypes    = { 'vim' },
})
