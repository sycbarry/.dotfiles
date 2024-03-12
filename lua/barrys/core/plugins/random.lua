
return
{

  {'m4xshen/autoclose.nvim', lazy=false},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
		priority = 1000,
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
		  vim.cmd.colorscheme "catppuccin-latte"
		end,
	},

	{ "EdenEast/nightfox.nvim", },

  { "kyazdani42/nvim-web-devicons", lazy=false},

	{ 'nvim-treesitter/nvim-treesitter', lazy=false},

  { "L3MON4D3/LuaSnip", lazy=false, dependencies = { "rafamadriz/friendly-snippets" }},

  {
    "nvim-telescope/telescope-bibtex.nvim",
    dependencies = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"}
  },

  { "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    }
  }

}

