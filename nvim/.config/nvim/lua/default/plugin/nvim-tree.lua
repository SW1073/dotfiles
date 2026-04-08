vim.pack.add({
    { src = 'https://github.com/nvim-tree/nvim-web-devicons' }, -- dependency
	{ src = 'https://github.com/nvim-tree/nvim-tree.lua' },
})

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
    sort = {
        sorter = "case_sensitive",
    },
    view = {
        width = 45,
        side = "right",
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
})
