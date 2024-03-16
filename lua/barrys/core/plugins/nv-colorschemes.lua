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
        -- vim.cmd.colorscheme "gruvbox"
        vim.cmd.colorscheme "catppuccin-frappe"
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

