vim.pack.add({
    { src = 'https://github.com/f-person/git-blame.nvim' },
})

require("gitblame").setup {
    enabled = false,
}
