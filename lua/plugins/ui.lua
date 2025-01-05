return {
  { -- Adds git related signs to the gutter, as well as utilities for managing changes
    "lewis6991/gitsigns.nvim",
    opts = {
      signs = {
        add = { text = "+" },
        change = { text = "~" },
        delete = { text = "_" },
        topdelete = { text = "‾" },
        changedelete = { text = "~" },
      },
    },
  },

  --  File Explorer in Nvim
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons", opt = true },
    config = function()
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1

      require("nvim-tree").setup({
        filters = {
          dotfiles = false,
        },
      })

      local nvim_tree = require("nvim-tree.api")
      vim.keymap.set("i", "<C-N>", nvim_tree.tree.toggle, { silent = true })
      vim.keymap.set("n", "<C-N>", nvim_tree.tree.toggle, { silent = true })
    end,
  },

  -- Buffer Line
  {
    "akinsho/bufferline.nvim",
    version = "*",
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      options = {
        diagnostics = "nvim_lsp",
        always_show_bufferline = false,
        offsets = {
          {
            filetype = "NvimTree",
            text = "NvimTree",
            highlight = "Directory",
            text_align = "center",
          },
          {
            filetype = "undotree",
            text = "UndoTree",
            highlight = "Directory",
            text_align = "center",
          },
        },
      },
    },
    config = function(_, opts) require("bufferline").setup(opts) end,
  },
}
