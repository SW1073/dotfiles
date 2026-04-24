vim.pack.add({
    { src = 'https://github.com/Saghen/blink.cmp', version = 'v1' },
})

require('blink.cmp').setup({
    enabled = function()
        return not vim.tbl_contains({ "text", "markdown", }, vim.bo.filetype)
    end,

    sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
    },

    completion = { documentation = { auto_show = true } },
    -- Function signature helper
    signature = { enabled = true },

    fuzzy = { implementation = "prefer_rust_with_warning" },
})
