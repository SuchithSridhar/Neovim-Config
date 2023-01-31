-- Configure treesitter for syntax highlighting
-- Available languages:
-- https://github.com/nvim-treesitter/nvim-treesitter#supported-languages

require 'nvim-treesitter.configs'.setup {
  ensure_installed = {
    'c', 'lua', 'rust', 'ruby', 'vim', 'cpp', 'python',
    'go', 'javascript', 'html', 'css', 'bash', 'haskell',
    'java', 'json', 'json5', 'make', 'sql', 'markdown',
    'latex', 'yaml'
  },

  sync_install = false,
  auto_install = true,
  highlight = {
    enable = false
  }
}
