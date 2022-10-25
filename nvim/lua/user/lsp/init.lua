local ok, _ = pcall(require, "lspconfig")
if not ok then
  vim.notify("failed to load lspconfig")
  return
end

require("user/lsp/mason")
require("user/lsp/handlers").setup()
require("user/lsp/null-ls")

require("rust-tools").setup({
  server = {
    on_attach = require("user/lsp/handlers").on_attach,
    capabilities = require("user/lsp/handlers").capabilities,
  },
})

