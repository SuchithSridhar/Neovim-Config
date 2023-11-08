require("cmp_lsp_config")
require("whichkey")
require("luasnip_maps")

-- Git signs
require('gitsigns').setup()

-- Tree sitter context
require('treesitter-context').setup {
  enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
  max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
  min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
  line_numbers = true,
  multiline_threshold = 20, -- Maximum number of lines to show for a single context
  trim_scope = 'outer', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
  mode = 'cursor',  -- Line used to calculate context. Choices: 'cursor', 'topline'
  -- Separator between context and content. Should be a single character string, like '-'.
  -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
  separator = nil,
  zindex = 20, -- The Z-index of the context window
  on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
}

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

-- Indent black line
require("ibl").setup {
  --  space_char_blankline = " ",
  --  show_current_context = true,
  --  show_current_context_start = false,
  --  show_trailing_blankline_indent = false,
  --  char_highlight_list = {
  --    "IndentBlanklineIndent1",
  --  },
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

-- Auto close HTML tags
require('nvim-ts-autotag').setup({
  filetypes = { "html" , "xml", "jinja", "php" },
})

-- Surround plugin

require("nvim-surround").setup({
  keymaps = {

    -- Placeholders since I don't want to use these
    insert = "<C-9>",
    insert_line = "<C-9>",

    -- Normal mode surround
    normal = "<leader>rs",
    -- Normal mode surround entire line
    normal_cur = "<leader>rss",
    -- Normal mode surround but delimiters on new lines
    normal_line = "<leader>rS",
    -- Normal mode surround on new lines for entire line
    normal_cur_line = "<leader>rSS",
    visual = "<leader>rs",
    visual_line = "<leader>rss",
    delete = "<leader>rd",
    change = "<leader>rc",
  }
})
