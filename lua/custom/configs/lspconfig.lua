local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local util = require "lspconfig/util"

lspconfig.quick_lint_js.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"javascript", "javascriptreact", "json"}
})


lspconfig.bufls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

lspconfig.bashls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"sh"},
})


lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"python"},
})

lspconfig.lua_ls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"lua"},
})

lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {"gopls"},
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
    },
  },
}
