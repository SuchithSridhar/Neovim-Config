local ks = vim.keymap.set

ks("i", "jk", "<Esc>", { desc = "jk keymap for faster insert mode exit" })

-- Ctrl-D and Ctrl-U
ks("n", "<C-d>", "<C-d>zz")
ks("n", "<C-u>", "<C-u>zz")

-- Clear highlight after search
ks("n", "<leader>nh", "<cmd>nohlsearch<CR>", { desc = "[N]o [H]ighlight search results" })

-- Diagnostic keymaps
ks("n", "<leader>dn", vim.diagnostic.goto_next, { desc = "Go to [D]iagnostics [N]ext message" })
ks("n", "<leader>dp", vim.diagnostic.goto_prev, { desc = "Go to [D]iagnostics [P]revious message" })
ks("n", "<leader>df", vim.diagnostic.open_float, { desc = "Open [D]iagnostic [F]loat" })
ks("n", "<leader>dq", vim.diagnostic.setloclist, { desc = "Open [D]iagnostic [Q]uickfix list" })

-- Terminals in neovim have odd keybind, remap to more reasonable one
ks("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Keybinds to make split navigation easier.
ks("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
ks("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
ks("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
ks("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Reload colorscheme
ks("n", "<leader>nr", function() require("theme-loader").reload_theme() end, { desc = "Reload Neovim Colors" })

require("keybinds.telescope")
require("keybinds.lsp")
require("keybinds.buffers")
