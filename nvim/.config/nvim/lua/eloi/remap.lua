local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "<leader>pv", vim.cmd.Ex, opts)
map("n", "<C-b>", ":NvimTreeFindFileToggle<CR>", opts)

-- BarBar commands
map("n", "<A-w>", "<Cmd>BufferClose<CR>", opts)
map("n", "<A-.>", "<Cmd>BufferNext<CR>", opts)
map("n", "<A-,>", "<Cmd>BufferPrevious<CR>", opts)

map("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", opts)
map("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", opts)
map("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", opts)
map("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", opts)
map("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", opts)
map("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", opts)
map("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", opts)
map("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", opts)
map("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", opts)
map("n", "<A-0>", "<Cmd>BufferLast<CR>", opts)


map('n', '<leader>rf', vim.lsp.buf.rename, {})


map("n", ",,", "<Cmd>nohl<CR>", opts)

map("n", "<leader>gb", "<Cmd>GitBlameToggle<CR>", opts)

-- Disable arrow keys, Let's use hjkl and break the habit
map("n", "<up>", "<nop>", opts)
map("n", "<down>", "<nop>", opts)
map("n", "<left>", "<nop>", opts)
map("n", "<right>", "<nop>", opts)

map("i", "<up>", "<nop>", opts)
map("i", "<down>", "<nop>", opts)
map("i", "<left>", "<nop>", opts)
map("i", "<right>", "<nop>", opts)

map("v", "<up>", "<nop>", opts)
map("v", "<down>", "<nop>", opts)
map("v", "<left>", "<nop>", opts)
map("v", "<right>", "<nop>", opts)

-- Salvavidas para parentesis, corchetes y claudators
map('i', '{<CR>', '{<CR>}<Esc>ko', opts)
map('i', '[<CR>', '[<CR>]<Esc>ko', opts)
map('i', '(<CR>', '(<CR>)<Esc>ko', opts)

map('i', '{}', '{}<Right>', opts)
map('i', '[]', '[]<Right>', opts)
map('i', '()', '()<Right>', opts)
map('i', '""', '""<Right>', opts)

map('i', '(', '()<Left>', opts)
map('i', '{', '{}<Left>', opts)
map('i', '[', '[]<Left>', opts)
map('i', '"', '""<Left>', opts)
map('i', "'", "''<Left>", opts)
