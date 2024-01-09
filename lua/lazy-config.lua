local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup({

  -- Game for vim motions
  'ThePrimeagen/vim-be-good',

  -- Which key (keymap finder)
  'folke/which-key.nvim',

  -- Neodev -> update LSP settings automatically
  'folke/neodev.nvim',

  -- Tree Sitter (Syntax Highlighting)
  'nvim-treesitter/nvim-treesitter',

  -- Maintain context for functions and statements
  -- I'm using my version to support markdown
  'suchithsridhar/nvim-treesitter-context',

  -- Tree sitter playground
  'nvim-treesitter/playground',

  -- Harpoon (Fast Navigation)
  'theprimeagen/harpoon',

  -- Undo Tree (Undo history tree)
  'mbbill/undotree',

  -- Lazy Git (Git Interface)
  {
    'kdheepak/lazygit.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
  },

  -- Telescope (Fuzzy Finder)
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.3',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' }, -- Required
      {                            -- Optional
        'williamboman/mason.nvim',
        run = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },     -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'L3MON4D3/LuaSnip' },     -- Required
    }
  },

  {
    "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    config = function()
      require("chatgpt").setup({
        api_key_cmd = "cat /home/suchi/.pass/chatgpt-api-key"
      })
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    }
  },

  {
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    version = "2.*",
    -- install jsregexp (optional!).
    build = "make install_jsregexp"
  },

  -- Auto pairs
  {
      'windwp/nvim-autopairs',
      event = "InsertEnter",
      opts = {}
  },

  -- Emmet Vim (HTML Emmet Shortcuts)
  'mattn/emmet-vim',
  'dcampos/cmp-emmet-vim',

  -- Color Schemes
  'navarasu/onedark.nvim',
  'rose-pine/neovim',
  'folke/tokyonight.nvim',
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

  -- Lua Snip (Snippet Engine)
  'saadparwaiz1/cmp_luasnip',

  -- Snippet Library
  'rafamadriz/friendly-snippets',

  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

  -- Gitsigns (Symbols on the left)
  'lewis6991/gitsigns.nvim',


  -- Lua Line
  {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  },

  -- Bufferline
  {
    'akinsho/bufferline.nvim',
    requires = 'nvim-tree/nvim-web-devicons'
  },

  -- Indent Blankline
  -- Add indentation guides even on blank lines
  {
    "lukas-reineke/indent-blankline.nvim",
    event = "VeryLazy",
    opts = {
      indent = {
        char = "│",
        tab_char = "│",
      },
      scope = { enabled = false },
      exclude = {
        filetypes = {
          "help",
          "alpha",
          "dashboard",
          "neo-tree",
          "Trouble",
          "trouble",
          "lazy",
          "mason",
          "notify",
          "toggleterm",
          "lazyterm",
        },
      },
    },
    main = "ibl",
  },

  -- Active indent guide and indent text objects. When you're browsing
  -- code, this highlights the current level of indentation, and animates
  -- the highlighting.
  {
    "echasnovski/mini.indentscope",
    version = false, -- wait till new 0.7.0 release to put it back on semver
    event = "VeryLazy",
    opts = {
      -- symbol = "▏",
      symbol = "│",
      options = { try_as_border = true },
    },
    init = function()
      vim.api.nvim_create_autocmd("FileType", {
        pattern = {
          "help",
          "alpha",
          "dashboard",
          "neo-tree",
          "Trouble",
          "trouble",
          "lazy",
          "mason",
          "notify",
          "toggleterm",
          "lazyterm",
        },
        callback = function()
          vim.b.miniindentscope_disable = true
        end,
      })
    end,
  },

  -- use gc to comment and uncomment lines
  'numToStr/Comment.nvim',

  --  File Explorer in Nvim
  {
    'nvim-tree/nvim-tree.lua',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  },

  -- Plugin similar to easy motions for vim
  {
    'smoka7/hop.nvim',
    version = "*",
    opts = {},
  },

  -- Close HTML tags automatically
  "windwp/nvim-ts-autotag",

  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
  },

  {
    -- Highlights hex colors such as #9adaf4
    "norcalli/nvim-colorizer.lua",
    version = "*",
    event = "VeryLazy",
    config = function ()
      require('colorizer').setup()
    end
  },

  -- Comment using gc
  'tpope/vim-commentary',

  -- Jinja Syntax highlighing
  'Glench/Vim-Jinja2-Syntax'

})
