-- ~/.config/nvim/lua/user/lsp/lspconfig.lua

-- https://github.com/neovim/nvim-lspconfig



-------------------------------------------------------------------------------
-- Variables & Objects
-------------------------------------------------------------------------------

-- Import lspconfig plugin safely:
local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
  return
end

-- Import cmp-nvim-lsp plugin safely:
local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
  return
end

-- Import typescript plugin safely:
local typescript_setup, typescript = pcall(require, "typescript")
if not typescript_setup then
  return
end


local keymap = vim.keymap

-- Enable keybinds only for when lsp server available:
local on_attach = function(client, bufnr)
end

-- Keybind options:
local opts = { noremap = true, silent = true, buffer = bufnr }

-- Used to enable autocompletion (assign to every lsp server config):
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Change the Diagnostic symbols in the sign column (gutter):
local signs = { Error = " ", Warn = " ", Hint = "ﴞ ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end



-------------------------------------------------------------------------------
-- Keymaps
-------------------------------------------------------------------------------

  -- set keybinds
 --[[  keymap.set("n", "gf", "<cmd>Lspsaga lsp_finder<CR>", opts) -- show definition, references
  keymap.set("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>", opts) -- got to declaration
  keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts) -- see definition and make edits in window
  keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts) -- go to implementation
  keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts) -- see available code actions
  keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts) -- smart rename
  keymap.set("n", "<leader>d", "<cmd>Lspsaga show_line_diagnostics<CR>", opts) -- show  diagnostics for line
  keymap.set("n", "<leader>d", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts) -- show diagnostics for cursor
  keymap.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts) -- jump to previous diagnostic in buffer
  keymap.set("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts) -- jump to next diagnostic in buffer
  keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts) -- show documentation for what is under cursor
  keymap.set("n", "<leader>o", "<cmd>LSoutlineToggle<CR>", opts) -- see outline on right hand side

  -- typescript specific keymaps (e.g. rename file and update imports)
  if client.name == "tsserver" then
    keymap.set("n", "<leader>rf", ":TypescriptRenameFile<CR>") -- rename file and update imports
    keymap.set("n", "<leader>oi", ":TypescriptOrganizeImports<CR>") -- organize imports (not in youtube nvim video)
    keymap.set("n", "<leader>ru", ":TypescriptRemoveUnused<CR>") -- remove unused variables (not in youtube nvim video)
  end ]]
--end


-------------------------------------------------------------------------------
-- Language Servers
-------------------------------------------------------------------------------

-- Bash server:
lspconfig["bashls"].setup({
  -- Enable autocompletion for the server:
  capabilities = capabilities,
  -- Add the HTML-Keybinds to autocompletion:
  on_attach = on_attach,
  --[[ vim.cmd("LspInstall bashls"), ]]
})

-- CSS server:
lspconfig["cssls"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  --[[ vim.cmd("LspInstall cssls"), ]]
})

-- Docker server:
lspconfig["dockerls"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  --[[ vim.cmd("LspInstall dockerls"), ]]
})

-- Docker-Compose server:
lspconfig["docker_compose_language_service"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  --[[ vim.cmd("LspInstall docker_compose_language_service"), ]]
})

-- Emmet server:
lspconfig["emmet_ls"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "svelte" },
  --[[ vim.cmd("LspInstall emmet_ls"), ]]
})

-- Grammarly server:
lspconfig["grammarly"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  --[[ vim.cmd("LspInstall grammarly"), ]]
})

-- HTML server:
lspconfig["html"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  --[[ vim.cmd("LspInstall html"), ]]
})

-- JSON server:
lspconfig["jsonls"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  --[[ vim.cmd("LspInstall jsonls"), ]]
})

lspconfig["jsonnet_ls"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  --[[ vim.cmd("LspInstall jsonnet_ls"), ]]
})

-- JavaScript server:
lspconfig["tsserver"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  --[[ vim.cmd("LspInstall tsserver"), ]]
})

lspconfig["quick_lint_js"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  --[[ vim.cmd("LspInstall quick_lint_js"), ]]
})

-- Markdown server:
--[[ lspconfig["marksman"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  vim.cmd("LspInstall marksman"),
})

lspconfig["prosemd_lsp"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  vim.cmd("LspInstall prosemd_lsp"),
}) ]]

lspconfig["remark_ls"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  --[[ vim.cmd("LspInstall remark_ls"), ]]
})

lspconfig["zk"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  --[[ vim.cmd("LspInstall zk"), ]]
})

-- PHP server:
--[[ lspconfig["intelephense"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  vim.cmd("LspInstall intelephense"),
}) ]]

lspconfig["phpactor"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  --[[ vim.cmd("LspInstall phpactor"), ]]
})

--[[ lspconfig["psalm"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  vim.cmd("LspInstall psalm"),
}) ]]

-- SQL server:
lspconfig["sqlls"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  --[[ vim.cmd("LspInstall sqlls"), ]]
})

-- Salt server:
lspconfig["salt_ls"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  --[[ vim.cmd("LspInstall salt_ls"), ]]
})

-- TailwindCSS server:
lspconfig["tailwindcss"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  --[[ vim.cmd("LspInstall tailwindcss"), ]]
})

-- Lua server:
lspconfig["lua_ls"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    Lua = {
      -- Make language server recognize "vim" global:
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        -- Make language server aware of runtime files:
        library = {
          [vim.fn.expand("$VIMRUNTIME/lua")] = true,
          [vim.fn.stdpath("config") .. "/lua"] = true,
        },
      },
    },
  },
  --[[ vim.cmd("LspInstall lua_ls"), ]]
})

-- Typescript server (configure with plugin):
typescript.setup({
  server = {
    capabilities = capabilities,
    on_attach = on_attach,
  },
  --[[ vim.cmd("LspInstall bashls"), ]]
})

-- XML server:
lspconfig["lemminx"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  --[[ vim.cmd("LspInstall lemminx"), ]]
})

-- YAML server:
lspconfig["yamlls"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  --[[ vim.cmd("LspInstall yamlls"), ]]
})
