vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.schedule(function() vim.opt.clipboard = "unnamedplus" end)

-- Enable mouse mode, can be useful for resizing splits
vim.opt.mouse = "a"
vim.opt.number = true
vim.opt.breakindent = true
vim.g.have_nerd_form = true

vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.local/share/nvim/undodir"

vim.opt.signcolumn = "yes"
vim.opt.showmode = false

vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Preview substitutions live, as you type
vim.opt.inccommand = "split"

vim.opt.cursorline = true
vim.opt.scrolloff = 10

-- vim.opt.termguicolors = true

-- vim.o.completeopt - Auto complete options
-- menuone: Show autocomplete menu even if only one option is present.
-- noselect: Require manual selection, none selected by default.
vim.o.completeopt = "menuone,noselect"
