
-- Remap Esc to jk
vim.keymap.set('i', 'jk', '<Esc>', { silent = true })
vim.keymap.set('n', '<C-N>', ':NERDTreeToggle<CR>', { silent = true })
vim.keymap.set('n', '<leader>th', ':ToggleTerm<CR>', { silent = true })

-- Move around buffers with H and L
vim.keymap.set('n', 'H', ':bp<CR>', { silent = true })
vim.keymap.set('n', 'L', ':bn<CR>', { silent = true })

-- Clear highlight after search
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- Save using Ctrl-S
vim.keymap.set('i', '<C-S>', '<Esc>:w<CR>a', { silent = true })
vim.keymap.set('n', '<C-S>', ':w<CR>', { silent = true })

-- Use leader y/p from system clipboard
vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>p', '"+p')
vim.keymap.set('v', '<leader>p', '"+p')
