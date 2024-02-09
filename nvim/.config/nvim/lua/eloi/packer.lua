-- This file can be loaded by calling `lua require('plugins')` from your init.vim
--vim.keymap.set('n', '<leader>pg', builtin.git_files, {})

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Telescope
	use {
		'nvim-telescope/telescope.nvim',
		requires = {{'nvim-lua/plenary.nvim'}}
	}

	-- Gruvbox colorscheme
    use { "ellisonleao/gruvbox.nvim" }
	-- use { "morhetz/gruvbox" } -- original, pero no es pot configurar tant benne

    -- Github colorscheme
    use ({ 'projekt0n/github-nvim-theme' })

    -- Solarized colorscheme
    use 'shaunsingh/solarized.nvim'

    -- Monokai colorscheme
    use 'tanvirtin/monokai.nvim'

	-- Treesitter
	use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

	-- The Foking LSP
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		requires = {
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

	}

    -- VimTeX
    use 'lervag/vimtex'

    -- LuaLine
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- VimTree
    use {
        'nvim-tree/nvim-tree.lua',
        requires = 'nvim-tree/nvim-web-devicons' -- optional, for file icons
        -- tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    -- BarBar
    use 'nvim-tree/nvim-web-devicons'
    use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'}

    -- GCC comment capabilities
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    -- GitSigns
    use {
        'lewis6991/gitsigns.nvim',
        tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
    }

    -- Github copilot
    use {'github/copilot.vim'}

    -- Tokyo colorscheme
    use {'folke/tokyonight.nvim'}

    -- Markdown preview
    use ({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

    -- Tsoding colorscheme (gruber-darker)
    use { "blazkowolf/gruber-darker.nvim", }

    -- Cappuccin colorscheme
    use { "catppuccin/nvim", as = "catppuccin" }

    -- Syntax highlighting for kitty configuration
    use "fladson/vim-kitty"

    -- OneDark colorscheme (atom)
    use "navarasu/onedark.nvim"

    -- Git blame
    use "f-person/git-blame.nvim"

    -- Trailing spaces
    use "ntpeters/vim-better-whitespace"

    -- Indentation guides or lines
    use "lukas-reineke/indent-blankline.nvim"
end)

