local ks = vim.keymap.set

-- Telescope

local telescope = require('telescope.builtin')

ks('n', '<leader>sf', telescope.find_files, {})
ks('n', '<leader>sg', telescope.git_files, {})
ks('n', '<leader>ss', telescope.live_grep, {})
ks('n', '<leader>sb', telescope.buffers, {})

-- Harpoon

local harpoon_mark = require('harpoon.mark')
local harpoon_ui = require('harpoon.ui')

ks("n", "<leader>ha", harpoon_mark.add_file)
ks("n", "<leader>he", harpoon_ui.toggle_quick_menu)

ks("n", "<leader>hh", function() harpoon_ui.nav_file(1) end)
ks("n", "<leader>hj", function() harpoon_ui.nav_file(2) end)
ks("n", "<leader>hk", function() harpoon_ui.nav_file(3) end)
ks("n", "<leader>hl", function() harpoon_ui.nav_file(4) end)

-- Lua Snip Keymaps

local luasnip = require('luasnip')

ks("i", "<C-j>", function() luasnip.jump(1) end)
ks("i", "<C-k>", function() luasnip.jump(-1) end)

-- Hop.nvim
-- https://github.com/smoka7/hop.nvim/wiki/Commands

ks('n', '<leader>ee', ":HopWord<CR>")
ks('n', '<leader>er', ":HopChar1<CR>")
ks('n', '<leader>el', ":HopLine<CR>")

-- UndoTree

ks("n", "<leader>u", vim.cmd.UndotreeToggle)

-- LazyGit

ks("n", "<leader>gg", vim.cmd.LazyGit)

-- Tagbar
ks("n", "<leader>t", ":TagbarToggle<CR>")

-- Nvim Tree

local nvim_tree = require("nvim-tree.api")
ks('i', '<C-N>', nvim_tree.tree.toggle, { silent = true })
ks('n', '<C-N>', nvim_tree.tree.toggle, { silent = true })


