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
        }
      })
        vim.cmd.colorscheme "evergarden"
        -- vim.cmd.colorscheme "catppuccin-latte"
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
}

