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
		  --vim.cmd.colorscheme "catppuccin-latte"
		  vim.cmd.colorscheme "catppuccin"
		end,
	},
	{ "Mofiqul/dracula.nvim" },
}

