vim.keymap.set("i", "jk", "<Esc>", { desc = "jk keymap for faster insert mode exit" })
vim.keymap.set("n", "<leader>nh", "<cmd>nohlsearch<CR>", { desc = "[N]o [H]ighlight search results" })

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next, { desc = "Go to [D]iagnostics [N]ext message" })
vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev, { desc = "Go to [D]iagnostics [P]revious message" })
vim.keymap.set("n", "<leader>df", vim.diagnostic.open_float, { desc = "Open [D]iagnostic [F]loat" })
vim.keymap.set("n", "<leader>dq", vim.diagnostic.setloclist, { desc = "Open [D]iagnostic [Q]uickfix list" })

-- Terminals in neovim have odd keybind, remap to more reasonable one
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Keybinds to make split navigation easier.
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Reload colorscheme
vim.keymap.set("n", "<leader>nr", function()
  require("theme-loader").reload_theme()
end, { desc = "Reload Neovim Colors" })

require("keybinds.telescope")
require("keybinds.lsp")
