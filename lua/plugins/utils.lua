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
}
