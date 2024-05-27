function ConfigureGruvbox()
    -- Default options:
    require("gruvbox").setup({
        terminal_colors = true, -- add neovim terminal colors
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
            strings = true,
            emphasis = true,
            comments = true,
            operators = false,
            folds = true, },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true, -- invert background for search, diffs, statuslines and errors
        contrast = "hard", -- can be "hard", "soft" or empty string
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        -- transparent_mode = true,
    })
end

function ConfigureGitHubCS()
    -- Default options
    require('github-theme').setup({
        options = {
            -- Compiled file's destination location
            compile_path = vim.fn.stdpath('cache') .. '/github-theme',
            compile_file_suffix = '_compiled', -- Compiled file suffix
            hide_end_of_buffer = true, -- Hide the '~' character at the end of the buffer for a cleaner look
            hide_nc_statusline = true, -- Override the underline style for non-active statuslines
            transparent = true,       -- Disable setting background
            terminal_colors = true,    -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
            dim_inactive = false,      -- Non focused panes set to alternative background
            module_default = true,     -- Default enable value for modules
            styles = {                 -- Style to be applied to different syntax groups
                comments = 'NONE',       -- Value is any valid attr-list value `:help attr-list`
                functions = 'NONE',
                keywords = 'NONE',
                variables = 'NONE',
                conditionals = 'NONE',
                constants = 'NONE',
                numbers = 'NONE',
                operators = 'NONE',
                strings = 'NONE',
                types = 'NONE',
            },
            inverse = {                -- Inverse highlight for different types
                match_paren = false,
                visual = false,
                search = false,
            },
            darken = {                 -- Darken floating windows and sidebar-like windows
                floats = false,
                sidebars = {
                    enabled = true,
                    list = {},             -- Apply dark background to specific windows
                },
            },
            modules = {                -- List of various plugins and additional options
                -- ...
            },
        },
        palettes = {},
        specs = {},
        groups = {},
    })
end

function ConfigureTokyoNight()
    require("tokyonight").setup({
        -- your configuration comes here
        -- or leave it empty to use the default settings
        style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
        light_style = "day", -- The theme is used when the background is set to light
        transparent = true, -- Enable this to disable setting the background color
        terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
        styles = {
            -- Style to be applied to different syntax groups
            -- Value is any valid attr-list value for `:help nvim_set_hl`
            comments = { italic = true },
            keywords = { italic = true },
            functions = {},
            variables = {},
            -- Background styles. Can be "dark", "transparent" or "normal"
            sidebars = "dark", -- style for sidebars, see below
            floats = "dark", -- style for floating windows
        },
        sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
        day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
        hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
        dim_inactive = false, -- dims inactive windows
        lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

        --- You can override specific color groups to use other groups or a hex color
        --- function will be called with a ColorScheme table
        ---@param colors ColorScheme
        -- on_colors = function(colors) end,

        --- You can override specific highlights to use other groups or a hex color
        --- function will be called with a Highlights and ColorScheme table
        ---@param highlights Highlights
        ---@param colors ColorScheme
        -- on_highlights = function(highlights, colors) end,
    })
end

function ColorMyPencils(color)
    -- color = color or "gruvbox"
    -- color = color or "github_dark"
    -- color = color or "tokyonight"
    color = color or "kanagawa"

    if color == "gruvbox" then
        ConfigureGruvbox()
    elseif color == "github_dark" then
        ConfigureGitHubCS()
    elseif color == "tokyonight" then
        ConfigureTokyoNight()
    end
    vim.cmd.colorscheme(color)

    -- make the background transparent
    -- vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
    -- vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
end


ColorMyPencils()
