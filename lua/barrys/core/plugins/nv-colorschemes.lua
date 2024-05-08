return {
	{ "bluz71/vim-nightfly-colors" },
	{
		"catppuccin/nvim",
		name = "catppuccin",
		config = function()
		require("catppuccin").setup({
        styles = {
          comments = { "italic" },
          conditionals = { "bold" },
          booleans = {"bold"},
          types = {"bold"},
          keywords = {"bold"},
          functions = { "bold", "italic" },
          strings = {"italic", "bold"},
          decorators = {"italic", "bold"},
          properties = {"italic", "bold"},
          operators = {"italic", "bold"}
        }
      })
        -- vim.cmd.colorscheme "evergarden"
        -- vim.cmd.colorscheme "rose-pine-dawn"
        vim.cmd.colorscheme "gruvbox"
        -- vim.cmd.colorscheme "catppuccin-latte"
        -- vim.cmd.colorscheme "catppuccin-macchiato"
        -- vim.cmd.colorscheme "dawnfox"
		end,
	},
    {
        "rose-pine/neovim",
        name = "rose-pine",
        variant = "dawn", -- auto, main, moon, or dawn
        dark_variant = "dawn", -- main, moon, or dawn
        dim_inactive_windows = false,
        extend_background_behind_borders = true,

        enable = {
            terminal = true,
            legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
            migrations = true, -- Handle deprecated options automatically
        },

        styles = {
            bold = true,
            italic = true,
            transparency = false,
        },

        groups = {
            border = "muted",
            link = "iris",
            panel = "surface",

            error = "love",
            hint = "iris",
            info = "foam",
            note = "pine",
            todo = "rose",
            warn = "gold",

            git_add = "foam",
            git_change = "rose",
            git_delete = "love",
            git_dirty = "rose",
            git_ignore = "muted",
            git_merge = "iris",
            git_rename = "pine",
            git_stage = "iris",
            git_text = "rose",
            git_untracked = "subtle",

            h1 = "iris",
            h2 = "foam",
            h3 = "rose",
            h4 = "gold",
            h5 = "pine",
            h6 = "foam",
        },

        highlight_groups = {
            -- Comment = { fg = "foam" },
            -- VertSplit = { fg = "muted", bg = "muted" },
        },

        before_highlight = function(group, highlight, palette)
            -- Disable all undercurls
            -- if highlight.undercurl then
            --     highlight.undercurl = false
            -- end
            --
            -- Change palette colour
            -- if highlight.fg == palette.pine then
            --     highlight.fg = palette.foam
            -- end
        end,
    },
    {
        'comfysage/evergarden',
        opts = {
            transparent_background = true,
            contrast_dark = 'medium', -- 'hard'|'medium'|'soft'
            style = {
                types = { italic = true, bold = true },
                comment = { italic = true },
                keyword = { italic = true, bold = true },
                string = { italic = true, bold = true },
                method = { italic = true, bold = true },
            },
            overrides = { }, -- add custom overrides
        },
    },
	{ "Mofiqul/dracula.nvim" },
    { "ellisonleao/gruvbox.nvim", priority = 900 , config = true, opts = {
      terminal_colors = true, -- add neovim terminal colors
      undercurl = true,
      underline = true,
      bold = false,
      italic = {
        strings = true,
        emphasis = true,
        comments = true,
        operators = false,
        folds = true,
      },
      strikethrough = true,
      invert_selection = false,
      invert_signs = false,
      invert_tabline = false,
      invert_intend_guides = false,
      inverse = true, -- invert background for search, diffs, statuslines and errors
      contrast = "soft", -- can be "hard", "soft" or empty string
      palette_overrides = {},
      overrides = {},
      dim_inactive = false,
      transparent_mode = true,
    }},
}

