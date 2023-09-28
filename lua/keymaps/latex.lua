function MapLatexBindings()
    -- Compile document
    vim.keymap.set('n', '<F12>',
                ":w <CR><CR> :!pdflatex % > /dev/null 2>&1<CR><CR>",
                { silent= true })
    -- math latex inline
    vim.keymap.set('i', '<C-y>',
                "\\(  \\)<left><Left><Left>",
                { silent= true })
    -- math latex block
    vim.keymap.set('i', '<C-u>',
                "<Esc>o\\[\\]<left><Left><CR><Esc>O",
                { silent= true })
    vim.keymap.set('n', '<C-u>',
                "o\\[\\]<left><Left><CR><Esc>O",
                { silent= true })
    vim.keymap.set('i', '<C-a>',
                "\\left(\\right)<Esc>bba",
                {silent= true })
end

vim.cmd "autocmd FileType tex lua MapLatexBindings()"
