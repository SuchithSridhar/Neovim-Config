local builtin = require('telescope.builtin')

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')


vim.keymap.set('n', '<leader>sf', builtin.find_files, {})
vim.keymap.set('n', '<leader><leader>', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

