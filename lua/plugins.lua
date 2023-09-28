require("cmp_lsp_config")
require("whichkey")

-- Git signs
require('gitsigns').setup()

-- Lua Line
-- Themes: https://github.com/nvim-lualine/lualine.nvim/blob/master/THEMES.md
require('lualine').setup {
  options = {
    theme = 'auto'
  }
}

require('bufferline').setup {
  options = {
    theme = 'auto'
  }
}

-- Indent blank line
vim.opt.list = false
vim.cmd([[highlight IndentBlanklineIndent1 guifg=#444444 gui=nocombine]])

require("indent_blankline").setup {
  space_char_blankline = " ",
  show_current_context = true,
  show_current_context_start = false,
  show_trailing_blankline_indent = false,
  char_highlight_list = {
    "IndentBlanklineIndent1",
  },
}

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- empty setup using defaults
require("nvim-tree").setup({
  filters = {
    dotfiles = false,
  },
})

