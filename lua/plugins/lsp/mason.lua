return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")
    mason_lspconfig.setup({
      ensure_installed = {
        "html", "cssls", "bashls", "clangd", "dockerls", "golangci_lint_ls",
        "gopls", "jsonls", "pyre", "sqlls", "java_language_server"
      },
      automatic_installation = true,
    })
  end,
}
