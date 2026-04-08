vim.pack.add({
    { src = 'https://github.com/nvim-neorg/neorg' },
})


vim.wo.foldlevel = 99
vim.wo.conceallevel = 2

require("neorg").setup {
    load = {
        ["core.defaults"] = {},
        ["core.concealer"] = {},
        ["core.dirman"] = {
            config = {
                workspaces = {
                    neorg = "~/neorg",
                },
                default_workspace = "neorg",
            },
        },
    },
}
