-- Install plugins with vim.pack
vim.pack.add({
  "https://github.com/nvim-treesitter/nvim-treesitter",
})

-- Configure Tree-sitter
require("nvim-treesitter").setup({
  ensure_installed = {
    "lua",
    "vim",
    "vimdoc",
    "bash",
    "markdown",
    "markdown_inline",
    "python",
    "c",
    "cpp",
    "rust",
    "go",
    "json",
    "yaml",
    "toml",
  },

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },

  indent = {
    enable = true,
  },
})
