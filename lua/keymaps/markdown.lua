function MapMarkdownBindings()
    -- insert picture
    vim.keymap.set('i', '<F12>',
                "![](./pic/pic.png)<Left><Left><Left><Left><Left>",
                { silent= true })

    vim.keymap.set('n', '<F12>',
                ":! upload-notes.py -s<CR>",
                { silent= true })

    -- math latex inline
    vim.keymap.set('i', '<C-y>',
                "$$$$<Left><Left>",
                { silent= true })

    -- math latex block
    vim.keymap.set('i', '<C-u>',
                "<Esc>i<div><CR>$$$<CR>$$$<CR></div><Esc>kO",
                { silent= true })
    vim.keymap.set('n', '<C-u>',
                "i<div><CR>$$$<CR>$$$<CR></div><Esc>kO",
                { silent= true })

end

vim.cmd "autocmd FileType markdown lua MapMarkdownBindings()"
