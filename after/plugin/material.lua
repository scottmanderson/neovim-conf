require('material').setup{

    contrast = {
        terminal = false, -- Enable contrast for the built-in terminal
        sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
        floating_windows = false, -- Enable contrast for floating windows
        cursor_line = false, -- Enable darker background for the cursor line
        non_current_windows = false, -- Enable darker background for non-current windows
        filetypes = {}, -- Specify which filetypes get the contrasted (darker) background
    },

    styles = { -- Give comments style such as bold, italic, underline etc.
        comments = { --[[ italic = true ]] },
        strings = { --[[ bold = true ]] },
        keywords = { --[[ underline = true ]] },
        functions = { --[[ bold = true, undercurl = true ]] },
        variables = {},
        operators = {},
        types = {},
    },

    plugins = { -- Uncomment the plugins that you use to highlight them
        -- Available plugins:
        -- "dap",
        -- "dashboard",
        -- "gitsigns",
        -- "hop",
        -- "indent-blankline",
        -- "lspsaga",
        -- "mini",
        -- "neogit",
        -- "nvim-cmp",
        -- "nvim-navic",
        -- "nvim-tree",
        -- "nvim-web-devicons",
        -- "sneak",
        -- "telescope",
        -- "trouble",
        -- "which-key",
    },

    disable = {
        colored_cursor = false, -- Disable the colored cursor
        borders = false, -- Disable borders between verticaly split windows
        background = false, -- Prevent the theme from setting the background (NeoVim then uses your terminal background)
        term_colors = false, -- Prevent the theme from setting terminal colors
        eob_lines = false -- Hide the end-of-buffer lines
    },

    high_visibility = {
        lighter = false, -- Enable higher contrast text for lighter style
        darker = false -- Enable higher contrast text for darker style
    },

    lualine_style = "default", -- Lualine style ( can be 'stealth' or 'default' )

    async_loading = true, -- Load parts of the theme asyncronously for faster startup (turned on by default)

    custom_colors = function(colors)
	colors.editor.bg           = "#080808"
	colors.editor.bg_alt       = "#090B10"
	colors.editor.fg           = "#E5E5E5"
	colors.editor.fg_darker    = "#FFFFFF" -- TODO
	colors.editor.fg_dark      = "#DDDDDD"
	colors.editor.selection    = "#708090"
	colors.editor.contrast     = "#090B10"
	colors.editor.active       = "#1A1C25"
	colors.editor.border       = "#232637"
	colors.editor.line_numbers = "#ADD8E6"
	colors.editor.highlight    = "#1F2233"
	colors.editor.disabled     = "#464B5D"
	colors.editor.accent       = "#84FFFF"
	colors.syntax.comments     = "#4682B4"
    -- Custom colors must be a function that takes in the default colors table as
    -- a paramter, and then modifies them.
    -- To se the available colors, see lua/material/colors/init.lua
end,

    custom_highlights = {}, -- Overwrite highlights with your own


}

vim.cmd 'colorscheme material'
vim.g.material_style = "deep ocean"
