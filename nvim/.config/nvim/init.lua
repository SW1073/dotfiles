-- Install Lazy.nvim package manager in case it ain't yet installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- set leader BEFORE setting up lazy nvim
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- setup lazy lol
require("lazy").setup({
	-- Telescope
	{
		'nvim-telescope/telescope.nvim',
		dependencies = {{'nvim-lua/plenary.nvim'}}
	},

	-- Gruvbox colorscheme
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = true,
		opts = ...
	},
	--  { "morhetz/gruvbox" } -- original, pero no es pot configurar tant benne

	-- Github colorscheme
	{ 'projekt0n/github-nvim-theme' },

	-- Solarized colorscheme
	{ 'shaunsingh/solarized.nvim' },

	-- Monokai colorscheme
	{ 'tanvirtin/monokai.nvim' },

	-- Treesitter
	{ 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },

	-- The Foking LSP
	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		dependencies = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},         -- Required
			{'hrsh7th/cmp-nvim-lsp'},     -- Required
			{'hrsh7th/cmp-buffer'},       -- Optional
			{'hrsh7th/cmp-path'},         -- Optional
			{'saadparwaiz1/cmp_luasnip'}, -- Optional
			{'hrsh7th/cmp-nvim-lua'},     -- Optional

			-- Snippets
			{'L3MON4D3/LuaSnip'},             -- Required
			{'rafamadriz/friendly-snippets'}, -- Optional
		}

	},

	-- VimTeX
	{ 'lervag/vimtex' },

	-- LuaLine
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons', lazy = true }
	},

	-- VimTree
	{
		'nvim-tree/nvim-tree.lua',
		dependencies = 'nvim-tree/nvim-web-devicons' -- optional, for file icons
		-- tag = 'nightly' -- optional, updated every week. (see issue #1193)
	},

	-- BarBar
	{'nvim-tree/nvim-web-devicons'},
	{'romgrk/barbar.nvim', dependencies = 'nvim-web-devicons'},

	-- GCC comment capabilities
    {
        'numToStr/Comment.nvim',
        opts = {
            -- add any options here
        },
        lazy = false,
    },

	-- GitSigns
	{
		'lewis6991/gitsigns.nvim',
		version = 'release' -- To  the latest release (do not use this if you run Neovim nightly or dev builds!)
	},

	-- Github copilot
	{'github/copilot.vim'},

	-- Tokyo colorscheme
	{'folke/tokyonight.nvim'},

	-- Markdown preview
	{
		"iamcco/markdown-preview.nvim",
		build = function() vim.fn["mkdp#util#install"]() end,
	},

	-- Tsoding colorscheme (gruber-darker)
	{ "blazkowolf/gruber-darker.nvim", },

	-- Cappuccin colorscheme
	{ "catppuccin/nvim", name = "catppuccin" },

	-- Syntax highlighting for kitty configuration
	{"fladson/vim-kitty"},

	-- OneDark colorscheme (atom)
	{"navarasu/onedark.nvim"},

	-- Git blame
	{"f-person/git-blame.nvim"},

	-- Trailing spaces
	{"ntpeters/vim-better-whitespace"},

	-- Indentation guides or lines
	{"lukas-reineke/indent-blankline.nvim"},

    -- Flutter lol
    {
        'akinsho/flutter-tools.nvim',
        lazy = false,
        dependencies = {
            'nvim-lua/plenary.nvim',
            'stevearc/dressing.nvim', -- optional for vim.ui.select
        },
        config = true,
    }


}, opts);

require("eloi")
