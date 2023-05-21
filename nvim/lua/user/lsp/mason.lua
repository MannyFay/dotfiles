-- ~/.config/nvim/lua/user/lsp/mason.lua

------------------------------------------------------------------------------
-- Variables & Objects
------------------------------------------------------------------------------

-- Import mason plugin safely:
local mason_status, mason = pcall(require, "mason")
if not mason_status then
    return
end

-- Import mason-lspconfig plugin safely:
local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
    return
end

-- import mason-null-ls plugin safely
--[[ local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
    return
end ]]



------------------------------------------------------------------------------
-- Settings
------------------------------------------------------------------------------

-- Enable mason:
mason.setup()

-- vim.g.mason_julia_command = "/Applications/Julia-1.8.app/Contents/Resources/julia/bin/julia"

require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

mason_lspconfig.setup({
    -- List of servers for mason to install:
    ensure_installed = {
        "bashls",
        "cssls",
        "cssmodules_ls",
        "dockerls",
        "docker_compose_language_service",
        "emmet_ls",
        "grammarly",
        "html",
        "jsonls",
        "quick_lint_js", -- JavaScript
        "jsonnet_ls",
        --"marksman",
        --"prosemd_lsp",
        "remark_ls",
        "zk",
        "intelephense",
        --"phpactor",
        --[[ "psalm", ]]
        "sqlls",
        "salt_ls",
        "tailwindcss",
        "lua_ls",
        "tsserver",
        "lemminx",
        "yamlls",
    },
    -- auto-install configured servers (with lspconfig)
    automatic_installation = true, -- not the same as ensure_installed
})

--mason_null_ls.setup({
    -- list of formatters & linters for mason to install
  --  ensure_installed = {
--        "prettier", -- ts/js formatter
 --       "stylua", -- lua formatter
--        "eslint_d", -- ts/js linter
--    },
    -- auto-install configured formatters & linters (with null-ls)
--    automatic_installation = true,
--})
