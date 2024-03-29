local status, which_key = pcall(require, "which-key")
if not status then
  return
end

local setup = {
  plugins = {
    marks = true, -- shows a list of your marks on ' and `
    registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
    spelling = {
      enabled = true, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
      suggestions = 20, -- how many suggestions should be shown in the list?
    },
    -- the presets plugin, adds help for a bunch of default keybindings in Neovim
    -- No actual key bindings are created
    presets = {
      operators = false, -- adds help for operators like d, y, ... and registers them for motion / text object completion
      motions = true, -- adds help for motions
      text_objects = true, -- help for text objects triggered after entering an operator
      windows = true, -- default bindings on <c-w>
      nav = true, -- misc bindings to work with windows
      z = true, -- bindings for folds, spelling and others prefixed with z
      g = true, -- bindings for prefixed with g
    },
  },
  -- add operators that will trigger motion and text object completion
  -- to enable all native operators, set the preset / operators plugin above
  -- operators = { gc = "Comments" },
  key_labels = {
    -- override the label used to display some keys. It doesn't effect WK in any other way.
    -- For example:
    -- ["<space>"] = "SPC",
    -- ["<cr>"] = "RET",
    -- ["<tab>"] = "TAB",
  },
  icons = {
    breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
    separator = "➜", -- symbol used between a key and it's label
    group = "+", -- symbol prepended to a group
  },
  popup_mappings = {
    scroll_down = "<c-d>", -- binding to scroll down inside the popup
    scroll_up = "<c-u>", -- binding to scroll up inside the popup
  },
  window = {
    border = "rounded", -- none, single, double, shadow
    position = "bottom", -- bottom, top
    margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
    padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
    winblend = 0,
  },
  layout = {
    height = { min = 4, max = 25 }, -- min and max height of the columns
    width = { min = 20, max = 50 }, -- min and max width of the columns
    spacing = 3, -- spacing between columns
    align = "left", -- align columns left, center or right
  },
  ignore_missing = true, -- enable this to hide mappings for which you didn't specify a label
  hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " }, -- hide mapping boilerplate
  show_help = true, -- show help message on the command line when the popup is visible
  triggers = "auto", -- automatically setup triggers
  -- triggers = {"<leader>"} -- or specify a list manually
  triggers_blacklist = {
    -- list of mode / prefixes that should never be hooked by WhichKey
    -- this is mostly relevant for key maps that start with a native binding
    -- most people should not need to change this
    i = { "j", "k" },
    v = { "j", "k" },
  },
}

local opts = {
  mode = "n", -- NORMAL mode
  prefix = "<leader>",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true, -- use `nowait` when creating keymaps
}

--    "Buffers",
--    "<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = false})<cr>",


--  ["f"] = {
--    "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<cr>",
--    "Find files",
--   },

local lsp_maps = {
  name = "LSP",

  a = {
    name = "Action",
    a = "All",
    r = "Rename",
  },

  g = {
    name = "Go To",
    d = "Definition",
    r = "References",
  },

  k = "Hover",
  s = "Symbols",

  d = {
    name = "Diagonstics",
    d = "Hover",
    o = "Overview",
    j = "Next",
    k = "Previous"
  }
}


local mappings = {

  l = lsp_maps,

  s = {
    name = "Search",
    f = "Files",
    s = "Live Grep",
    g = "Git Files",
    b = "Buffers"
  },

  e = {
    name = "Hop",
    e = "Hop Word",
    r = "Hop Char 1",
    l = "Hop Line"
  },

  h = {
    name = "Harpoon",
    a = "Add File",
    e = "Edit Files",
    h = "First Mark",
    j = "Second Mark",
    k = "Third Mark",
    l = "Fourth Mark",
  },

-- ks("n", "<leader>wh", "<Ctrl-w>h")
-- ks("n", "<leader>wl", "<Ctrl-w>l")
-- ks("n", "<leader>wj", "<Ctrl-w>j")
-- ks("n", "<leader>wk", "<Ctrl-w>k")
  w = {
    name = "Window",
    h = "Left",
    j = "Down",
    k = "Up",
    l = "Right"
  },

  g = {
    name = "LazyGit",
    g = "Open"
  },

  n = {
    name = "Nvim",
    h = "No Highlight",
    r = "Reload colors",
    f = "Format"
  },

  r = {
    name = "Surround",
    s = "normal",
    ss = "wrap line",
    S = "normal w/ new lines",
    SS = "wrap line w/ new lines",
    d = "delete",
    c = "change",
  },

  d = "Hard Delete",
  y = "Yank System",
  p = "Paste System",

}

which_key.setup(setup)
which_key.register(mappings, opts)
