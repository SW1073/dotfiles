vim.pack.add({
  { src = "https://github.com/neovim/nvim-lspconfig" },
  { src = "https://github.com/hrsh7th/cmp-nvim-lsp" },
  { src = "https://github.com/hrsh7th/nvim-cmp" },
})

vim.lsp.config("clangd", {
  cmd = { "clangd" },
  filetypes = { "c", "cpp", "objc", "objcpp" },
  root_markers = { ".clangd", "compile_commands.json", "compile_commands.yaml", "Makefile", ".git" },
})
vim.lsp.enable("clangd")


-- vim.lsp.config("pyright", {
--     cmd = {"pyright-langserver"},
--     filetypes = { "py" },
--     root_markers = { "Makefile", ".git" },
-- })
vim.lsp.enable("pyright")


vim.lsp.config.bashls = {
  cmd = { 'bash-language-server', 'start' },
  filetypes = { 'bash', 'sh' }
}
vim.lsp.enable 'bashls'
