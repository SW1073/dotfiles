vim.pack.add({
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/hrsh7th/cmp-nvim-lsp" },
    { src = "https://github.com/hrsh7th/nvim-cmp" },
    { src = "https://github.com/lukas-reineke/lsp-format.nvim" },
})

-- Configure lsp-format
require("lsp-format").setup({})
-- Register autocomand to let it interact with the available lsp server
vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
        require("lsp-format").on_attach(client, args.buf)
    end,
})

-- Enable clangd
vim.lsp.config("clangd", {
    cmd = { "clangd" },
    filetypes = { "c", "cpp", "objc", "objcpp" },
    root_markers = { ".clangd", "compile_commands.json", "compile_commands.yaml", "Makefile", ".git" },
})
vim.lsp.enable("clangd")

-- Enable pyright
vim.lsp.enable("pyright")

-- Enable bashls
vim.lsp.config.bashls = {
    cmd = { 'bash-language-server', 'start' },
    filetypes = { 'bash', 'sh' }
}
vim.lsp.enable("bashls")

-- Enable luals
vim.lsp.enable("lua_ls")

-- Enable svls
vim.lsp.enable("svls")
