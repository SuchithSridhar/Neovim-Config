-- Telescope

local telescope = require('telescope.builtin')
vim.keymap.set('n', '<leader>sf', telescope.find_files, {})
vim.keymap.set('n', '<C-p>', telescope.git_files, {})
vim.keymap.set('n', '<leader>sg', telescope.live_grep, {})


-- Harpoon

local harpoon_mark = require('harpoon.mark')
local harpoon_ui = require('harpoon.ui')

vim.keymap.set("n", "<leader>ha", harpoon_mark.add_file)
vim.keymap.set("n", "<leader>he", harpoon_ui.toggle_quick_menu)

vim.keymap.set("n", "<leader>hh", function() harpoon_ui.nav_file(1) end)
vim.keymap.set("n", "<leader>hj", function() harpoon_ui.nav_file(2) end)
vim.keymap.set("n", "<leader>hk", function() harpoon_ui.nav_file(3) end)
vim.keymap.set("n", "<leader>hl", function() harpoon_ui.nav_file(4) end)
	

-- UndoTree

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- LazyGit

vim.keymap.set("n", "<leader>gg", vim.cmd.LazyGit)
