-- First thing you will want to do setup some default keybindings.
-- The common convention here is to setup these keybindings only
-- when you have a language server active in the current file.
-- Here is the code to achieve that.
local lsp_zero = require('lsp-zero')
lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  vim.diagnostic.config {
    virtual_text = false,
    signs = true,
    update_in_insert = false,
    underline = true,
    severity_sort = true,
    float = {
      focusable = false,
      style = 'minimal',
      border = 'rounded',
      source = 'always',
      header = '',
      prefix = '',
    },
  }
  lsp_zero.default_keymaps({buffer = bufnr})
end)

local lsp = require('lsp-zero').preset({
    name = 'recommended',
    set_lsp_keymaps = true,
    manage_nvim_cmp = true,
    suggest_lsp_servers = false,
})

-- Once you have a language server installed in your system, add
-- the setup in your Neovim config. Use the module lspconfig,
-- like this.
require'lspconfig'.clangd.setup{
    on_attach = function ()
       -- TODO
    end
}

-- (Optional) Configure lua language server for neovim
-- lsp.nvim_workspace()
lsp.setup()
