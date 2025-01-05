return {
  -- Detect tabstop and shiftwidth automatically
  "tpope/vim-sleuth",

  -- Highlight todo, notes, etc in comments
  {
    "folke/todo-comments.nvim",
    event = "VimEnter",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = { signs = false },
  },

  -- Undo Tree (Undo history tree)
  {
    "mbbill/undotree",
    config = function() vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "UndoTree" }) end,
  },

  -- Hop around like easy motion
  {
    "smoka7/hop.nvim",
    version = "*",
    opts = {},
    config = function()
      require("hop").setup()
      vim.keymap.set("n", "<leader>ee", ":HopWord<CR>", { desc = "Hop to word" })
      vim.keymap.set("n", "<leader>er", ":HopChar1<CR>", { desc = "Hop to char" })
      vim.keymap.set("n", "<leader>el", ":HopLine<CR>", { desc = "Hop to line" })
    end,
  },
}
