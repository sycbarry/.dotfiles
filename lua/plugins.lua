-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap =
    fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path})
end

return require("packer").startup {
  function(use)
    -- Packer can manage itself
    use "wbthomason/packer.nvim"

    -- use { 'dccsillag/magma-nvim', run = ':UpdateRemotePlugins' }

    use {
      "williamboman/mason-lspconfig.nvim",
      "williamboman/mason.nvim"
    }



    use { "briones-gabriel/darcula-solid.nvim", requires = "rktjmp/lush.nvim" }



    use {
      -- vscode-like pictograms for neovim lsp completion items Topics
      "onsails/lspkind-nvim",
      config = [[ require('plugins/lspkind') ]]
    }
     --
     use "overcache/NeoSolarized"
     use 'shaunsingh/solarized.nvim'
     use 'frenzyexists/aquarium-vim'

     use 'kvrohit/mellow.nvim'


    use {
      -- Utility functions for getting diagnostic status and progress messages from LSP servers, for use in the Neovim statusline
      "nvim-lua/lsp-status.nvim",
      config = [[ require('plugins/lspstatus') ]]
    }

    use { "ellisonleao/gruvbox.nvim" }
    use { 'rockerBOO/boo-colorscheme-nvim' }
    use { 'Everblush/nvim', as = 'everblush' }
    use {  'Yazeed1s/minimal.nvim' }
    use {
      'olivercederborg/poimandres.nvim',
      config = function()
        require('poimandres').setup {
          -- leave this setup function empty for default config
          -- or refer to the configuration section
          -- for configuration options
        }
      end
    }
    use {"adisen99/apprentice.nvim", requires = {"rktjmp/lush.nvim"}}
    use { 'nyoom-engineering/oxocarbon.nvim' }
    use { 'fenetikm/falcon' }
    use { 'elvessousa/sobrio' }
    use { "muchzill4/doubletrouble" }
    use { 'Yazeed1s/oh-lucy.nvim' }
    use { 'metalelf0/jellybeans-nvim' }
    use 'ofirgall/ofirkai.nvim'
    use "rebelot/kanagawa.nvim"


    use 'nvim-tree/nvim-web-devicons'
    use {
      'yamatsum/nvim-nonicons',
      requires = {'kyazdani42/nvim-web-devicons'}
    }
    use {
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
    }





    use {
      'neovim/nvim-lspconfig',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'hrsh7th/nvim-cmp'
    }




    use {
      'Olical/conjure'
    }

    use {
      -- A completion plugin for neovim coded in Lua.
      "hrsh7th/nvim-cmp",
      requires = {
        "hrsh7th/cmp-nvim-lsp", -- nvim-cmp source for neovim builtin LSP client
        "hrsh7th/cmp-nvim-lua", -- nvim-cmp source for nvim lua
        "hrsh7th/cmp-buffer", -- nvim-cmp source for buffer words.
        "hrsh7th/cmp-path", -- nvim-cmp source for filesystem paths.
        "hrsh7th/cmp-calc", -- nvim-cmp source for math calculation.
        "saadparwaiz1/cmp_luasnip" -- luasnip completion source for nvim-cmp
      },
      config = [[ require('plugins/cmp') ]]
    }

    use {
      "nvim-telescope/telescope-project.nvim"
    }

    use {
      "nvim-telescope/telescope-fzf-native.nvim",
      run = "make"
    }

    use {
      "nvim-telescope/telescope.nvim",
      requires = {
        "nvim-lua/plenary.nvim",
        "BurntSushi/ripgrep"
      },
      config = [[ require('plugins/telescope') ]]
    }

    use {
      "nvim-telescope/telescope-bibtex.nvim",
      requires = {
        {"nvim-telescope/telescope.nvim"}
      },
      config = function()
        require "telescope".load_extension("bibtex")
      end
    }

    use {
      -- Snippet Engine for Neovim written in Lua.
      "L3MON4D3/LuaSnip",
      requires = {
        "rafamadriz/friendly-snippets" -- Snippets collection for a set of different programming languages for faster development.
      },
      config = [[ require('plugins/luasnip') ]]
    }

    use {
      --  colorscheme for (neo)vim
      -- "shaunsingh/nord.nvim",
      -- "metalelf0/jellybeans-nvim",
      "rktjmp/lush.nvim",
    }

	use { 'nvim-treesitter/nvim-treesitter' }

    use {
      "tpope/vim-eunuch"
    }

    use {
      "nvim-lualine/lualine.nvim",
      requires = {"kyazdani42/nvim-web-devicons", opt = true},
      config = [[ require('plugins/lualine') ]]
    }

    use {
      "TimUntersberger/neogit",
      requires = {"nvim-lua/plenary.nvim"},
      config = [[ require('plugins/neogit') ]]
    }

    use {
      "kyazdani42/nvim-tree.lua",
      requires = "kyazdani42/nvim-web-devicons",
      config = [[ require('plugins/nvim-tree') ]]
    }

    use {
      "folke/zen-mode.nvim",
      config = [[ require('plugins/zen-mode') ]]
    }

    use {
      "ThePrimeagen/git-worktree.nvim",
      config = [[ require('plugins/git-worktree') ]]
    }

    use {
      "mhartington/formatter.nvim",
      config = [[ require('plugins/formatter') ]]
    }

    use {
      "EdenEast/nightfox.nvim",
    }

    use {
      "kmonad/kmonad-vim"
    }

    use {
      "tpope/vim-obsession"
    }

    use {
      "akinsho/toggleterm.nvim",
      config = [[ require("toggleterm").setup() ]]
    }

     use {
      "jiangmiao/auto-pairs",
     }

    use {
      "kvrohit/substrata.nvim",
    }

    use {
 	    "hrsh7th/nvim-cmp", --completion,
      "tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp",
    }

    if packer_bootstrap then
      require("packer").sync()
    end
  end
}
