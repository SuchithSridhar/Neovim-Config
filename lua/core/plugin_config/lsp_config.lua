require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = { "sumneko_lua" }
})

local on_attach = function(_, _)
  -- Rename variables
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})

  -- Code action
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

  -- Go to definition
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})

  -- Go to implementation
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})

  -- Go to references using telescope
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})

  -- Show documentation
  vim.keymap.set('n', '<leader>k', vim.lsp.buf.hover, {})
end

require("lspconfig").sumneko_lua.setup {
  on_attach = on_attach
}
