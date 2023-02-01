local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
    'preservim/nerdtree',
    requires = {
      'Xuyuanp/nerdtree-git-plugin',
      'ryanoasis/vim-devicons',
    },
  }

  -- Tree sitter for syntax highlighting
  use 'nvim-treesitter/nvim-treesitter'

  -- Telescope for easy searching
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    requries = {
      'nvim-lua/plenary.nvim'
    }
  }

  -- LSP Configuration & Plugins
  use {
    'neovim/nvim-lspconfig',
    requires = {
      -- Automatically install LSPs to stdpath for neovim
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',

      -- Useful status updates for LSP
      'j-hui/fidget.nvim',

      -- Additional lua configuration, makes nvim stuff amazing
      'folke/neodev.nvim',
    },
  }

  use { -- Autocompletion
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip'
    }
  }

  -- Commonly used snippets
  use "rafamadriz/friendly-snippets"

  -- Auto close brackets and strings
  use "jiangmiao/auto-pairs"

  -- Vim diffs for current file
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }

  -- Lualine for better status line at the bottom
  use 'nvim-lualine/lualine.nvim' -- Fancier statusline

  -- Bufferline at the top
  use {'akinsho/bufferline.nvim', requires = 'nvim-tree/nvim-web-devicons'}

  -- Add indentation guides even on blank lines
  use 'lukas-reineke/indent-blankline.nvim'

  -- "gc" to comment visual regions/lines
  use 'numToStr/Comment.nvim'

  -- Detect tabstop and shiftwidth automatically
  use 'tpope/vim-sleuth'

  -- Add git signs to nvim
  use 'lewis6991/gitsigns.nvim'

  -- Color themes
  use 'navarasu/onedark.nvim' -- Theme inspired by Atom

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
