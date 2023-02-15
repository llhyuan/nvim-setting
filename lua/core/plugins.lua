local fn = vim.fn

-- Automatically install packer
-- Typically fn.stdpath = ~/.local/share/nvim/
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
  print("Installing packer close and reopen Neovim...")
  vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init({
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
})

-- Only required if you have packer configured as `opt`
-- vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
  -- Packer can manage itself
  
  --From here, you can manage all the plugins
  use({ "wbthomason/packer.nvim" })  --Auto upgrade packer
  use({ "nvim-lua/popup.nvim" }) -- An implementation of the Popup API from vim in Neovim
  use({ "nvim-lua/plenary.nvim" }) -- Useful lua functions used by lots of plugins

  use({ "ethanholz/nvim-lastplace" })

  use({ "nvim-lualine/lualine.nvim" })
  use({ "akinsho/bufferline.nvim" })

 -- use({ "kyazdani42/nvim-web-devicons" })

  use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  }
  --tag = 'nightly' -- optional, updated every week. (see issue #1193)
}

  -- use({ "lukas-reineke/indent-blankline.nvim" })

  ------------------------------ commmenter ----------------------------
  use({ "numToStr/Comment.nvim" })
  use({ "JoosepAlviste/nvim-ts-context-commentstring" })


  -- use({ "BurntSushi/ripgrep" }) --requires

  -------------------------------treesitter--------------------------------
   use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
   -- use the following command when installing for the first time 
--  use {
--          'nvim-treesitter/nvim-treesitter',
--          run = function()
--              local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
--              ts_update()
--          end,
--      }


  use({ "p00f/nvim-ts-rainbow" })
  use({ "jiangmiao/auto-pairs" })

-------------------------------telescope---------------------------------
   use({ "nvim-telescope/telescope.nvim" })
   use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  -- use({ "phaazon/hop.nvim", branch = "v2" }) --rv2' optional but strongly recommended

  -- use({ "NvChad/nvim-colorizer.lua" })


------------------------------- lsp-----------------------------------
   use({ "williamboman/mason.nvim" })
   use({ "williamboman/mason-lspconfig.nvim" })
   use({ "neovim/nvim-lspconfig" })
   use({ "jose-elias-alvarez/null-ls.nvim" })

  --------------------------cmp------------------------------
   use({ "hrsh7th/nvim-cmp" }) -- Autocompletion plugin
   use({ "hrsh7th/cmp-nvim-lsp" }) -- LSP source for nvim-cmp
   use({ "hrsh7th/cmp-buffer" })
   use({ "hrsh7th/cmp-path" })
   use({ "hrsh7th/cmp-cmdline" })
   use({ "hrsh7th/cmp-nvim-lua" })
   use({ "f3fora/cmp-spell" })
   use({ "hrsh7th/cmp-calc" })
  ------------------- snippets required for cmp-------------------------
   use({ "saadparwaiz1/cmp_luasnip" }) -- Snippets source for nvim-cmp
   use({ "L3MON4D3/LuaSnip" }) -- Snippets plugin
   use({ "rafamadriz/friendly-snippets" })
  -- use({ "ray-x/cmp-treesitter" })
  -- use({ "onsails/lspkind.nvim" })

  -- languages
  -- use({ "mfussenegger/nvim-dap" })
  -- use({ "theHamsta/nvim-dap-virtual-text" })
  -- use({ "rcarriga/nvim-dap-ui" })

  -- use({ "olexsmir/gopher.nvim" })
  -- use({ "leoluz/nvim-dap-go" })

  -- Git
  -- use({ "lewis6991/gitsigns.nvim" })

  -- toggle term
  -- use({ "akinsho/toggleterm.nvim", tag = "*" })

  -- use({ "jose-elias-alvarez/null-ls.nvim", requires = { "nvim-lua/plenary.nvim" } })

  -- markdown
  -- use({ "godlygeek/tabular", ft = { "markdown" } }) -- requires
  -- use({ "plasticboy/vim-markdown", ft = { "markdown" } })
  -- use({
  --   "iamcco/markdown-preview.nvim",
  --   run = function()
  --     vim.fn["mkdp#util#install"]()
  --   end
  -- })
  -- use({ "dhruvasagar/vim-table-mode" })

  -- use({ "mbbill/undotree" })

  -- use({ "lervag/vimtex" })

  -- use({ "mg979/vim-visual-multi" })

  -- use({ "chentoast/marks.nvim" })

  -- use({ "stevearc/aerial.nvim" })

  -------------------------------------- themes-----------------------------
  use({
    "sainnhe/gruvbox-material",
    "ellisonleao/gruvbox.nvim",
    "joshdick/onedark.vim",
    "Rigellute/shades-of-purple.vim",
    "rebelot/kanagawa.nvim",
    "sainnhe/everforest",
    "catppuccin/nvim",
    "lunarvim/colorschemes",
    "arcticicestudio/nord-vim",
    "dracula/vim"
  })

  -- UI
  -- use({ "goolord/alpha-nvim" })
  -- use({ "folke/noice.nvim" })
  -- use({ "rcarriga/nvim-notify" })
  -- use({ "petertriho/nvim-scrollbar" })
  -- use({ "j-hui/fidget.nvim" })
  -- use({ "folke/todo-comments.nvim" })
  -- use({ "MunifTanjim/nui.nvim" })

  -- with Tmux
  -- use({ "christoomey/vim-tmux-navigator" })
end)
