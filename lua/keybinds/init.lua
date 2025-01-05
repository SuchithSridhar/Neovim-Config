local ks = vim.keymap.set

ks("i", "jk", "<Esc>", { desc = "jk keymap for faster insert mode exit" })

-- Ctrl-D and Ctrl-U
ks("n", "<C-d>", "<C-d>zz")
ks("n", "<C-u>", "<C-u>zz")

-- Use leader y/p from system clipboard
ks("n", "<leader>y", '"+y')
ks("v", "<leader>y", '"+y')
ks("n", "<leader>p", '"+p')
ks("v", "<leader>p", '"+p')

-- Leader d to delete to void
ks("n", "<leader>d", '"_d')
ks("v", "<leader>d", '"_d')

-- Clear highlight after search
ks("n", "<leader>nh", "<cmd>nohlsearch<CR>", { desc = "[N]o [H]ighlight search results" })

-- Diagnostic keymaps
ks("n", "<leader>dn", vim.diagnostic.goto_next, { desc = "Go to [D]iagnostics [N]ext message" })
ks("n", "<leader>dp", vim.diagnostic.goto_prev, { desc = "Go to [D]iagnostics [P]revious message" })
ks("n", "<leader>df", vim.diagnostic.open_float, { desc = "Open [D]iagnostic [F]loat" })
ks("n", "<leader>dq", vim.diagnostic.setloclist, { desc = "Open [D]iagnostic [Q]uickfix list" })

-- Terminals in neovim have odd keybind, remap to more reasonable one
ks("t", "jk", "<C-\\><C-n>")
ks("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Keybinds to make split navigation easier.
ks("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
ks("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
ks("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
ks("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Reload colorscheme
ks("n", "<leader>nr", function() require("theme-loader").reload_theme() end, { desc = "Reload Neovim Colors" })

-- Move lines in visual mode
ks("v", "J", ":m '>+1<CR>gv=gv")
ks("v", "K", ":m '<-2<CR>gv=gv")

-- Make cursor stay at start during J
ks("n", "J", "mzJ`z")

-- Fix previous spelling mistake and move back to current location
ks("n", "<C-S>", "[s1z=``")
ks("i", "<C-S>", "<Esc>[s1z=``A")

require("keybinds.telescope")
require("keybinds.lsp")
