-- =============================================================
--                                                  
--   █████████   █████████                          
--  ███░░░░░███ ███░░░░░███  Suchith Sridhar        
-- ░███    ░░░ ░███    ░░░   
-- ░░█████████ ░░█████████   https://suchicodes.com 
--  ░░░░░░░░███ ░░░░░░░░███  https://github.com/suchithsridhar
--  ███    ░███ ███    ░███  
-- ░░█████████ ░░█████████                            
--  ░░░░░░░░░   ░░░░░░░░░                            
--                                                    
-- =============================================================
-- My neovim lua config,
-- stored at ~/.config/nvim/init.lua
-- =============================================================

require("core.config")
require("core.keymaps")
require("core.plugins")
require("core.plugin_config")

vim.opt.expandtab = true
vim.opt.spell = true

vim.opt.wrap = true
vim.opt.linebreak = true

vim.opt.cursorline = true
vim.opt.so = 999

-- Make line numbers default
vim.wo.number = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'

-- Set colorscheme
vim.o.termguicolors = true
-- vim.cmd [[colorscheme onedark]]
vim.cmd [[colorscheme suchi-evokai]]

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- autocmd FileType java inoremap <F12> System.out.println();<Left><left>

-- autocmd FileType markdown inoremap <F12> ![](./pic/pic.png)<Left><Left><Left><Left><Left>
-- autocmd FileType markdown inoremap <C-w> $$$$<Left><Left>

-- vim.cmd ":AddCreditsSlash read $HOME/Programming/snippets/author-slash.txt"
-- vim.cmd ":AddCreditsStar read $HOME/Programming/snippets/author-slash-star.txt"

vim.api.nvim_create_user_command(
    'SourceInit',
    'source $HOME/.config/nvim/init.lua',
    {
        desc = 'Source the config file'
    }
)

vim.api.nvim_create_user_command(
    'AddCreditsHash',
    'read $HOME/Programming/snippets/author-hash.txt',
    {
        desc = 'Insert credits snippets preceded with hashes'
    }
)

vim.api.nvim_create_user_command(
    'AddCreditsSlash',
    'read $HOME/Programming/snippets/author-slash.txt',
    {
        desc = 'Insert credits snippets preceded with slashes'
    }
)

vim.api.nvim_create_user_command(
    'AddCreditsStar',
    'read $HOME/Programming/snippets/author-slash-star.txt',
    {
        desc = 'Insert credits snippets preceded with slash star'
    }
)

vim.api.nvim_create_user_command(
    'Tab2',
    'set tabstop=2 softtabstop=2 shiftwidth=2',
    {
        desc = "Set the tabstop to 2 for current file"
    }
)

vim.api.nvim_create_user_command(
    'Tab4',
    'set tabstop=4 softtabstop=4 shiftwidth=4',
    {
        desc = "Set the tabstop to 4 for current file",
    }
)
