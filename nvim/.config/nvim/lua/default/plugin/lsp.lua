vim.pack.add({
    { src = "https://github.com/neovim/nvim-lspconfig" },                     -- Loads a ton of LSP configurations
    { src = 'https://github.com/mason-org/mason.nvim' },                      -- So that we don't need to install tools manually
    { src = 'https://github.com/mason-org/mason-lspconfig.nvim' },            -- Connect the two so that Mason knows which plugins are available
    { src = 'https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim' }, -- Ideal to configure "ensure_installed" and other options
    { src = 'https://github.com/lukas-reineke/lsp-format.nvim' },             -- Interact with lsp autoformat capabilities
})

-- Configure the whole "mason stack". The alternative is to enable them manually (like just below)
require('mason').setup()
require('mason-lspconfig').setup()
require('mason-tool-installer').setup({
    ensure_installed = {
        'clangd',
    },
})

-- Enable them manually :)
-- vim.lsp.enable("clangd")
-- vim.lsp.enable("pyright")
-- vim.lsp.enable("bashls")
-- vim.lsp.enable("lua_ls")
-- vim.lsp.enable("svls")

-- Configure lsp-format and register autocomand to let it interact with the available lsp server
require('lsp-format').setup()
-- vim.api.nvim_create_autocmd('LspAttach', {
--     callback = function(args)
--         local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
--         require("lsp-format").on_attach(client, args.buf)
--     end,
-- })

-- Fix for lua_ls warnings when in nvim configuration files
vim.lsp.config('lua_ls', {
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
            },
            diagnostics = {
                globals = {
                    'vim',
                    'require',
                },
            },
        },
        workspace = {
            library = vim.api.nvim_get_runtime_file("", true),
        },
        telemetry = {
            enable = false,
        },
    },
})
