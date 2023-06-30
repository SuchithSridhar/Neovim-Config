-- Open file explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("i", "jk", "<Esc>")

-- Move lines in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Make cursor stay at start during J
vim.keymap.set("n", "J", "mzJ`z")

-- Move around buffers with H and L
vim.keymap.set('n', 'H', ':bp<CR>', { silent = true })
vim.keymap.set('n', 'L', ':bn<CR>', { silent = true })

-- Clear highlight after search
vim.keymap.set('n', '<leader>n', ':nohlsearch<CR>')

-- Save using Ctrl-S
vim.keymap.set('i', '<C-S>', '<Esc>:w<CR>a', { silent = true })
vim.keymap.set('n', '<C-S>', ':w<CR>', { silent = true })

-- Use leader y/p from system clipboard
vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>p', '"+p')
vim.keymap.set('v', '<leader>p', '"+p')

-- Leader d to delete to void
vim.keymap.set('n', '<leader>d', '"_d')
vim.keymap.set('v', '<leader>d', '"_d')

vim.keymap.set('t', 'jk', '<C-\\><C-n>')
