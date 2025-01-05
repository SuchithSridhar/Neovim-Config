return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")
    local ks = vim.keymap.set

    harpoon.setup()

    ks("n", "<leader>ja", function() harpoon:list():append() end, { desc = "Harpoon Add" })
    ks("n", "<leader>jh", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Harpoon View" })

    ks("n", "<leader>jj", function() harpoon:list():select(1) end, { desc = "Harpoon First" })
    ks("n", "<leader>jk", function() harpoon:list():select(2) end, { desc = "Harpoon Second" })
    ks("n", "<leader>jl", function() harpoon:list():select(3) end, { desc = "Harpoon Third" })
    ks("n", "<leader>j;", function() harpoon:list():select(4) end, { desc = "Harpoon Fourth" })
  end,
}
