local builtin = require('telescope.builtin')

local options = {
    silent = true,
}

vim.keymap.set('n', '<leader>pf', builtin.find_files, options)
vim.keymap.set('n', '<leader>pg', builtin.git_files, options)
vim.keymap.set('n', '<leader>ps', builtin.live_grep, options)
