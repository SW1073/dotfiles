-- Setup of the leader
vim.g.mapleader = " "

-- realtive line numbers and stuff
vim.opt.nu = true
vim.opt.relativenumber = false

-- 4 tab indenting ftw
vim.opt.tabstop = 4         -- Width of a hard tabstop measured in spaces.
vim.opt.softtabstop = 4     -- Number of spaces that a <Tab> counts for while performing editing operations.
vim.opt.shiftwidth = 4      -- Number of spaces to use for each step of (auto)indent.
vim.opt.expandtab = true    -- In Insert mode: Use the appropriate number of spaces to insert a <Tab>.
vim.opt.smartindent = true  -- Do smart autoindenting when starting a new line.

-- No wrapping >:(
vim.opt.wrap = false

-- Good GUI colors ig?
vim.opt.termguicolors = true

-- For the lsp to not move the  code everytime it detects errors
vim.opt.signcolumn = 'yes'

-- For the files to be opened in UTF-8 encoding
vim.opt.fileencoding="utf-8"

-- Line on the same row as cursor
vim.opt.cursorline = true

-- Hightlight trailing spaces
-- vim.opt.list = true
-- vim.opt.listchars = {tab = "»·", trail = "·", nbsp = "␣"}
