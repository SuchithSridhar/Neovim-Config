function MapMarkdownBindings()
    vim.keymap.set('n', '<F12>',
                ":! upload-notes.py -s<CR>",
                { silent= true })
end

vim.cmd "autocmd FileType markdown lua MapMarkdownBindings()"
