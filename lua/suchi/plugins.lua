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


-- Lsp-Zero

local lsp = require('lsp-zero').preset({})
local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-p'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-n'] = cmp.mapping.select_next_item(cmp_select),
	['<C-y'] = cmp.mapping.confirm({select = true}),
	['<C-Space'] = cmp.mapping.complete(),
})

lsp.setup_nvim_cmp({
	mapping = cmp_mappings
})

lsp.on_attach(function(client, bufnr)
	--lsp.default_keymaps({buffer = bufnr})
	local opts = {buffer = bufnr, remap = false}

	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "<leader>ls", function() vim.lsp.buf.workspace_symbol() end, opts)
	vim.keymap.set("n", "<leader>ld", function() vim.diagnostic.open_float() end, opts)
	vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
	vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
	vim.keymap.set("n", "<leader>lca", function() vim.lsp.buf.code_action() end, opts)
	vim.keymap.set("n", "<leader>lrr", function() vim.lsp.buf.references() end, opts)
	vim.keymap.set("n", "<leader>lrn", function() vim.lsp.buf.rename() end, opts)
	vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.ensure_installed({
})


lsp.setup()



