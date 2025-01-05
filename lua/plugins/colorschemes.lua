return {
  { "navarasu/onedark.nvim", name = "onedark" },
  { "folke/tokyonight.nvim", name = "tokyonight" },
  { "catppuccin/nvim", name = "catppuccin" },
  { "AlexvZyl/nordic.nvim", name = "nordic" },
  {
    "suchithsridhar/theme-loader.nvim",
    event = "VeryLazy",
    config = function()
      require("theme-loader").setup({
        theme_file = os.getenv("HOME") .. "/.config/suchi-configs/theme.txt",
        theme_map = {
          dark = "tokyonight-night",
          light = "catppuccin-latte",
        },
        watch_file = true,
      })
    end,
  },
}
