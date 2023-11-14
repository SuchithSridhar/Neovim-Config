-- Lsp-Zero

local lsp = require('lsp-zero').preset({})
local cmp = require('cmp')
local luasnip = require('luasnip')
local lsp_config = require('lspconfig')

require('luasnip.loaders.from_vscode').lazy_load()
luasnip.config.setup {}

cmp.setup {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert {
    ['<C-e>'] = cmp.mapping.abort(),
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expandable() then
        luasnip.exapand()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end, { 'i', 's' }),
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  },
}

lsp.on_attach(function(client, bufnr)
  --lsp.default_keymaps({buffer = bufnr})
  local opts = { buffer = bufnr, remap = false }

  vim.keymap.set("n", "<leader>lgd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "<leader>lgr", require('telescope.builtin').lsp_references, { desc = '[G]oto [R]eferences' })

  vim.keymap.set("n", "<leader>lk", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>ls", function() vim.lsp.buf.workspace_symbol() end, opts)

  vim.keymap.set("n", "<leader>ldd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set('n', '<leader>ldo', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
  vim.keymap.set("n", "<leader>ldj", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "<leader>ldk", function() vim.diagnostic.goto_prev() end, opts)

  vim.keymap.set("n", "<leader>laa", function() vim.lsp.buf.code_action() end, opts)
  -- vim.keymap.set("n", "<leader>l", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>lar", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)

  -- Define the ":Format" command
  vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
    vim.lsp.buf.format()
  end, { desc = 'Format current buffer with LSP' })
end)

-- (Optional) Configure lua language server for neovim
lsp_config.lua_ls.setup(lsp.nvim_lua_ls())

lsp.ensure_installed({
})

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

lsp.setup();
lsp_config.emmet_ls.setup({
  -- on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {
    "eruby", "html", "javascript", "javascriptreact", "less",
    "svelte", "pug", "typescriptreact", "vue", "jinja", "php"
  },
  init_options = {
    html = {
      options = {
        -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
        ["bem.enabled"] = true,
      },
    },
  }
})
