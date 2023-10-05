local ks = vim.keymap.set

-- Remap Esc to jk
ks('i', 'jk', '<Esc>', { silent = true })

-- Move around buffers with H and L
ks('n', 'H', ':bp<CR>', { silent = true })
ks('n', 'L', ':bn<CR>', { silent = true })

-- Clear highlight after search
ks('n', '<leader>nh', ':nohlsearch<CR>')

-- Reload colorscheme
ks('n', '<leader>nr', ':so ~/.config/nvim/lua/colors.lua<CR>')

-- Save using Ctrl-S
ks('i', '<C-S>', '<Esc>:w<CR>a', { silent = true })
ks('n', '<C-S>', ':w<CR>', { silent = true })

-- Use leader y/p from system clipboard
ks('n', '<leader>y', '"+y')
ks('v', '<leader>y', '"+y')
ks('n', '<leader>p', '"+p')
ks('v', '<leader>p', '"+p')

-- Leader d to delete to void
ks('n', '<leader>d', '"_d')
ks('v', '<leader>d', '"_d')

-- Terminal Keymaps
ks('t', 'jk', '<C-\\><C-n>')

-- Move lines in visual mode
ks("v", "J", ":m '>+1<CR>gv=gv")
ks("v", "K", ":m '<-2<CR>gv=gv")

-- Make cursor stay at start during J
ks("n", "J", "mzJ`z")

-- Move to different window
ks("n", "<leader>wh", "<C-w>h")
ks("n", "<leader>wl", "<C-w>l")
ks("n", "<leader>wj", "<C-w>j")
ks("n", "<leader>wk", "<C-w>k")
